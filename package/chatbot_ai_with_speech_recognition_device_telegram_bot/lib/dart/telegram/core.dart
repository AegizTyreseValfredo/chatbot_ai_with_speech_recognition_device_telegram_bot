// ignore_for_file: non_constant_identifier_names, empty_catches

import 'dart:async';
import 'dart:io';

import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot/dart/core/core.dart';
import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot/dart/telegram/extension/tdlib_option.dart';
import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot/dart/telegram/update/update.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_lib/log/log.dart';
import 'package:telegram_client/scheme/telegram_client_library_tdlib_option_parameter.dart';
import 'package:telegram_client/telegram_client.dart';
import "package:path/path.dart" as path;

///
extension ChatbotAiWithSpeechRecognitionDeviceTelegramBotTelegramExtension on ChatbotAiWithSpeechRecognitionDeviceTelegramBot {
  ///
  FutureOr<Map?> telegram_bot_update({
    required UpdateTelegramClient updateTelegramClient,
  }) async {
    try {
      await telegramClient.autoSetData(updateTelegramClient);
      Map? update = await updateTelegramClient.updateRaw(
        is_lite: false,
        updataOptionTelegramClient: UpdataOptionTelegramClient(
          updataMessageTelegramClient: UpdataMessageTelegramClient(),
        ),
      );

      if (update == null) {
        return null;
      } 
      final TelegramClientLibraryTdlibOptionParameter tdlibOptionParameter = TelegramClientLibraryTdlibOptionParameter(updateTelegramClient.client_option);

      if (update["@type"] == "error") {
        if (update["message"] == "Wrong password") {
          try {
            var getMe = await telegramClient.tdlib.getMe(clientId: updateTelegramClient.telegramClientData.tdlib_client_id);

            if (getMe["result"] is Map == false) {
              getMe["result"] = {};
            }
            final Map get_me_result = getMe["result"];

            telegramClientTgUserIds.remove(get_me_result["id"]);
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
          await telegramClient.tdlib.exitClientById(updateTelegramClient.telegramClientData.tdlib_client_id);
          return {"@type": "closeClient", "message": "wrong_password"};
        }
      }
      if (update["@type"] == "updateAuthorizationState") {
        if (update["authorization_state"] is Map) {
          if (update["authorization_state"]["@type"] is String == false) {
            update["authorization_state"]["@type"] = "";
          }
          final String authStateType = update["authorization_state"]["@type"];

          if (authStateType == "authorizationStateLoggingOut") {}

          if (authStateType == "authorizationStateClosed") {
            database.generalLibraryLog.printToTerminal(
              logMessage: GeneralLibraryLogMessage(
                logOptions: null,
                isForcePrint: false,
                isFullDetail: false,
                value: "close: ${updateTelegramClient.telegramClientData.tdlib_client_id}",
                stackTrace: StackTrace.current,
                logMessageType: GeneralLibraryLogMessageType.info,
              ),
            );
            await telegramClient.tdlib.exitClientById(updateTelegramClient.telegramClientData.tdlib_client_id, isClose: false);
            return {"@type": "closeClient", "message": "log_out_or_delete"};
          }

          if (authStateType == "authorizationStateWaitPhoneNumber") {
            var login = await telegramClient.tdlib.request(
              "checkAuthenticationBotToken",
              parameters: {
                "token": tdlibOptionParameter.client_telegram_bot_token,
              },
              clientId: updateTelegramClient.telegramClientData.tdlib_client_id,
            );
            database.generalLibraryLog.printToTerminal(
              logMessage: GeneralLibraryLogMessage(
                logOptions: null,
                isForcePrint: false,
                isFullDetail: false,
                value: login,
                stackTrace: StackTrace.current,
                logMessageType: GeneralLibraryLogMessageType.info,
              ),
            );
            return login;
          }

          if (authStateType == "authorizationStateReady") {
            var getMe = await telegramClient.tdlib.getMe(clientId: updateTelegramClient.telegramClientData.tdlib_client_id);

            if (getMe["result"] is Map == false) {
              getMe["result"] = {};
            }
            final Map get_me_result = getMe["result"];
            try {
              Directory directory_db_procces = Directory(updateTelegramClient.client_option["database_directory"]);
              File file_is_log_out_txt = File(path.join(directory_db_procces.uri.toFilePath(), "is_log_out.txt"));
              if (file_is_log_out_txt.existsSync()) {
                await file_is_log_out_txt.delete(recursive: true);
              }
              File file_me_json = File(path.join(directory_db_procces.uri.toFilePath(), "me.json"));
              await file_me_json.writeAsString((get_me_result).filterByKeys(keys: ["id", "username", "first_name", "last_name", "type", "is_bot"]).toStringifyPretty());
            } catch (e) {}

            if (telegramClient.tdlib.first_client_id == updateTelegramClient.telegramClientData.tdlib_client_id) {
              database.generalLibraryLog.printToTerminal(
                logMessage: GeneralLibraryLogMessage(
                  logOptions: null,
                  isForcePrint: false,
                  isFullDetail: false,
                  value: "succes login main bot",
                  stackTrace: StackTrace.current,
                  logMessageType: GeneralLibraryLogMessageType.info,
                ),
              );
              database.generalLibraryLog.printToTerminal(
                logMessage: GeneralLibraryLogMessage(
                  logOptions: null,
                  isForcePrint: false,
                  isFullDetail: false,
                  value: jsonToMessage(
                    get_me_result,
                    isHtml: false,
                    jsonFullMedia: {},
                  ),
                  stackTrace: StackTrace.current,
                  logMessageType: GeneralLibraryLogMessageType.info,
                ),
              );
            } else {
              database.generalLibraryLog.printToTerminal(
                logMessage: GeneralLibraryLogMessage(
                  logOptions: null,
                  isForcePrint: false,
                  isFullDetail: false,
                  value: "succes: ${updateTelegramClient.telegramClientData.tdlib_client_id}",
                  stackTrace: StackTrace.current,
                  logMessageType: GeneralLibraryLogMessageType.info,
                ),
              );
              database.generalLibraryLog.printToTerminal(
                logMessage: GeneralLibraryLogMessage(
                  logOptions: null,
                  isForcePrint: false,
                  isFullDetail: false,
                  value: jsonToMessage(
                    get_me_result,
                    isHtml: false,
                    // isAutoHide: true,
                    jsonFullMedia: {},
                  ),
                  stackTrace: StackTrace.current,
                  logMessageType: GeneralLibraryLogMessageType.info,
                ),
              );
            }

            final TdlibClient tdlib_client_procces = () {
              final TdlibClient? get_tdlib_client_procces = telegramClient.tdlib.clients[updateTelegramClient.telegramClientData.tdlib_client_id];

              if (get_tdlib_client_procces != null) {
                return get_tdlib_client_procces;
              }
              final TdlibClient create_tdlib_client_procces = TdlibClient(
                client_id: updateTelegramClient.telegramClientData.tdlib_client_id,
                client_option: updateTelegramClient.client_option,
                is_bot: get_me_result["is_bot"] == true,
              );
              telegramClient.tdlib.clients[updateTelegramClient.telegramClientData.tdlib_client_id] = create_tdlib_client_procces;
              return create_tdlib_client_procces;
            }();

            if (updateTelegramClient.client_option["client_username"] != get_me_result["username"]) {
              tdlib_client_procces.client_option["client_username"] = get_me_result["username"];
              await telegramClient.tdlib.updateClientById(updateTelegramClient.telegramClientData.tdlib_client_id, newTdlibClient: tdlib_client_procces);
            }
          }
        }
      }
 
      if (update["callback_query"] is Map) {
        Map msg = update["callback_query"];
        return await telegram_update_callback_query(
          msg: msg,
          updateTelegramClient: updateTelegramClient,
          tdlibOptionParameter: tdlibOptionParameter,
        );
      }
      if (update["message"] is Map) {
        Map msg = update["message"];
        return await telegram_update_message(
          msg: msg,
          updateTelegramClient: updateTelegramClient,
          tdlibOptionParameter: tdlibOptionParameter,
        );
      }
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
    return null;
  }
}
