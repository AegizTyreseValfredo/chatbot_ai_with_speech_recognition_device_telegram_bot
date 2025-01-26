import 'dart:async';

import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot_database/database/core.dart';
import 'package:telegram_client/scheme/telegram_client_library_tdlib_option_parameter.dart';
import 'package:telegram_client/telegram_client.dart';
import 'package:whisper_dart/whisper_dart.dart';

///
class ChatbotAiWithSpeechRecognitionDeviceTelegramBot {
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
    }

    /// whisper
    {
      whisper.ensureInitialized();
    }
    _isInitialized = true;
  }

  
}
