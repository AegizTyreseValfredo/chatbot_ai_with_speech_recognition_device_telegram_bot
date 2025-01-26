// ignore_for_file: public_member_api_docs, empty_catches

import 'dart:async';
import 'dart:io';

import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot/dart/telegram/core.dart';
import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot/dart/telegram/extension/tdlib_option.dart';
import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot_database/database/core.dart';
import 'package:general_lib/log/log.dart';
import 'package:telegram_client/scheme/telegram_client_library_tdlib_option_parameter.dart';
import 'package:telegram_client/telegram_client.dart';
import 'package:whisper_dart/whisper_dart.dart';
import "package:path/path.dart" as path;

///
class ChatbotAiWithSpeechRecognitionDeviceTelegramBot {
  List<int> telegramClientTgUserIds = [];

  ///
  final ChatbotAiWithSpeechRecognitionDeviceTelegramBotDatabase database;

  ///
  final TelegramClient telegramClient;

  ///

  final Whisper whisper;

  ///
  ChatbotAiWithSpeechRecognitionDeviceTelegramBot({
    required this.telegramClient,
    required this.database,
    Whisper? whisper,
  }) : whisper = whisper ??
            Whisper(
              generalLibraryLog: database.generalLibraryLog,
            );

  ///
  late final String currentPath;
  bool _isInitialized = false;

  ///
  Future<void> ensureInitialized({
    required String currentPath,
  }) async {
    if (_isInitialized) {
      return;
    }
    this.currentPath = currentPath;
    database.ensureInitialized(
      currentPath: currentPath,
    );

    /// telegram
    {
      telegramClient.ensureInitialized(
        telegramClientTdlibOption: TelegramClientTdlibOption(
          clientOption: TelegramClientLibraryTdlibOptionParameter.create(
            api_hash: database.chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration.telegram_api_hash,
            api_id: database.chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration.telegram_api_id,
            enable_storage_optimizer: true,
            database_directory: database.directory_telegram_tdlib.path,
            files_directory: database.directory_telegram_tdlib.path,
          ),
        ),
      );
      await telegramClient.tdlib.ensureInitialized();

      telegramClient.on(
        event_name: telegramClient.event_invoke,
        onUpdate: (updateTelegramClient) async {
          try {
            if (updateTelegramClient.rawData["message"] == "AUTH_KEY_DUPLICATED") {
              database.generalLibraryLog.printToTerminal(
                logMessage: GeneralLibraryLogMessage(
                  logOptions: null,
                  isForcePrint: false,
                  isFullDetail: false,
                  value: "Auth Key Duplicated Try Restart Clients",
                  stackTrace: StackTrace.current,
                  logMessageType: GeneralLibraryLogMessageType.error,
                ),
              );
              try {
                Directory(updateTelegramClient.client_option["database_directory"]).deleteSync(recursive: true);

                await telegramClient.tdlib.exitClientById(updateTelegramClient.telegramClientData.tdlib_client_id, isClose: true);
                int clientIdNew = telegramClient.tdlib.td_create_client_id();
                updateTelegramClient.client_option["client_id"] = clientIdNew;
                await tdlibSetOption(clientId: clientIdNew);
                await telegramClient.tdlib.createclient(
                  clientId: clientIdNew,
                  clientOption: TelegramClientLibraryTdlibOptionParameter(updateTelegramClient.client_option),
                  clientUserId: 0,
                  isVoid: true,
                );
              } catch (e) {
                rethrow;
              }
            }
          } catch (e) {}
        },
        onError: (error, stackTrace) {},
      );
      telegramClient.on(
        event_name: telegramClient.event_update,
        onUpdate: (updateTelegramClient) async {
           await telegramClient.autoSetData(updateTelegramClient);

          try {
            /// check is bot api or tdlib as bot api
            return await telegram_bot_update(
              updateTelegramClient: updateTelegramClient,
            );
          } catch (e, stack) {
            database.generalLibraryLog.printToTerminal(
              logMessage: GeneralLibraryLogMessage(
                value: e,
                isForcePrint: false,
                isFullDetail: false,
                stackTrace: stack,
                logMessageType: GeneralLibraryLogMessageType.info,
                logOptions: null,
              ),
            );
          }
        },
        onError: (error, stackTrace) {},
      );

      final int telegramTdlibClientId = telegramClient.tdlib.td_create_client_id();
      final TelegramClientLibraryTdlibOptionParameter tdlibOptionParameter = TelegramClientLibraryTdlibOptionParameter.create();
      tdlibOptionParameter.client_telegram_bot_token = database.chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration.telegram_bot_token;
      tdlibOptionParameter.client_telegram_bot_user_id = database.chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration.telegram_bot_user_id;
      tdlibOptionParameter.client_telegram_owner_user_id = database.chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration.telegram_owner_user_id;

      final Directory directoryTdlibClient = Directory(path.join(database.directory_telegram_tdlib.path, "bot_${database.chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration.telegram_bot_user_id}"));
      if (directoryTdlibClient.existsSync() == false) {
        directoryTdlibClient.createSync(recursive: true);
      }
      tdlibOptionParameter.files_directory = directoryTdlibClient.path;
      tdlibOptionParameter.database_directory = directoryTdlibClient.path;
      await telegramClient.tdlib.createclient(
        clientId: telegramTdlibClientId,
        clientOption: tdlibOptionParameter,
      );
    }

    /// whisper
    {
      whisper.ensureInitialized();
    }
    _isInitialized = true;
  }

  Future<void> tdlibSetOptionOnline({
    required int clientId,
  }) async {
    try {
      await telegramClient.tdlib.invoke(
        "setOption",
        parameters: {
          "name": "online",
          "value": {
            "@type": "optionValueBoolean",
            "value": true,
          }
        },
        clientId: clientId,
        isVoid: true,
        isInvokeThrowOnError: false,
      );
    } catch (e) {}
  }

  static final List<Map> optionUsers = [
    ...{
      "disable_network_statistics",
      "disable_time_adjustment_protection",
      "ignore_file_names",
      "ignore_inline_thumbnails",
      "reuse_uploaded_photos_by_hash",
      "use_storage_optimizer",
      "ignore_platform_restrictions",
      "disable_persistent_network_statistics",
      "disable_contact_registered_notifications",
      "disable_sent_scheduled_message_notifications",
      "disable_top_chats",
      "ignore_default_disable_notification",
      "disable_animated_emoji",
    }.map((e) {
      return {
        "name": e,
        "value": {
          "@type": "optionValueBoolean",
          "value": true,
        }
      };
    }),
  ];

  Future<void> tdlibSetOption({
    required int clientId,
  }) async {
    for (var i = 0; i < optionUsers.length; i++) {
      final Map optionUser = optionUsers[i];

      try {
        await telegramClient.tdlib.invoke(
          "setOption",
          parameters: optionUser,
          clientId: clientId,
          isVoid: true,
          isInvokeThrowOnError: false,
        );
      } catch (e, stack) {
        database.generalLibraryLog.printToTerminal(
          logMessage: GeneralLibraryLogMessage(
            logOptions: null,
            isForcePrint: false,
            isFullDetail: false,
            value: e.toString(),
            stackTrace: stack,
            logMessageType: GeneralLibraryLogMessageType.error,
          ),
        );
      }
    }
  }
}
