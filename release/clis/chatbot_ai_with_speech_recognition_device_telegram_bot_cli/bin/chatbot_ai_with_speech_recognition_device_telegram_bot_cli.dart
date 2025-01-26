import 'dart:io';

import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot/cli/core.dart';
import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot_scheme/scheme/scheme/chatbot_ai_with_speech_recognition_device_telegram_bot_configuration.dart';
import 'package:general_lib/utils/utils.dart';

void main(List<String> arguments) {
  final environment = Platform.environment;
  final String telegramBotToken = environment["telegram_bot_token"] ?? "";
  ChatbotAiWithSpeechRecognitionDeviceTelegramBotCli.run(
    arguments: arguments,
    chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration: ChatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration.create(
      telegram_api_id: num.tryParse(environment["telegram_api_id"] ?? ""),
      telegram_api_hash: environment["telegram_api_hash"] ?? "",
      telegram_bot_token: telegramBotToken,
      telegram_bot_user_id: GeneralLibUtils.parserBotUserIdFromToken(telegramBotToken),
      telegram_owner_user_id: num.tryParse(environment["telegram_owner_user_id"] ?? ""),
      whisper_model_file_path: environment["whisper_model_file_path"] ?? "",
    ),
  );
}
