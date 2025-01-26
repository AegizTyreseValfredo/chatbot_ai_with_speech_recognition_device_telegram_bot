import 'dart:async';
import 'dart:io';

import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot/dart/core/core.dart';
import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot_database/database/database.dart';
import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot_scheme/scheme/scheme/chatbot_ai_with_speech_recognition_device_telegram_bot_configuration.dart';
import 'package:general_lib/log/log.dart';
import 'package:server_universe/native/native.dart';
import 'package:telegram_client/telegram_client.dart';
import "package:path/path.dart" as path;

///
class ChatbotAiWithSpeechRecognitionDeviceTelegramBotCli {
  //
  static FutureOr<void> run({
    required List<String> arguments,
    required ChatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration,
  }) async {
    final Directory directoryCurrent = Directory(path.join(Directory.current.path, "chatbot_ai_telegram_bot_data"));
    if (directoryCurrent.existsSync() == false) {
      directoryCurrent.createSync(recursive: true);
    }
    final ChatbotAiWithSpeechRecognitionDeviceTelegramBot chatbotAiWithSpeechRecognitionDeviceTelegramBot = ChatbotAiWithSpeechRecognitionDeviceTelegramBot(
      telegramClient: TelegramClient(),
      database: ChatbotAiWithSpeechRecognitionDeviceTelegramBotDatabase(
        chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration: chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration,
        generalLibraryLog: GeneralLibraryLog(
          logOptions: GeneralLibraryLogOptions(
            textTitle: "chatbot_ai_telegram_bot",
            textContext: "",
          ),
        ),
      ),
    );
    await chatbotAiWithSpeechRecognitionDeviceTelegramBot.ensureInitialized(
      currentPath: directoryCurrent.path,
    );
    chatbotAiWithSpeechRecognitionDeviceTelegramBot.database.generalLibraryLog.printToTerminal(
      logMessage: GeneralLibraryLogMessage(
        value: "Program Running Succes",
        isForcePrint: false,
        stackTrace: StackTrace.current,
        isFullDetail: false,
        logMessageType: GeneralLibraryLogMessageType.succes,
        logOptions: null,
      ),
    );
  }
}
