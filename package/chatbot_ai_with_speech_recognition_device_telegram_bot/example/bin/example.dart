import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot/cli/core.dart';
 import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot_scheme/scheme/scheme/chatbot_ai_with_speech_recognition_device_telegram_bot_configuration.dart';

void main(List<String> arguments) {
  ChatbotAiWithSpeechRecognitionDeviceTelegramBotCli.run(
    arguments: arguments,
    chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration: ChatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration.create(
      telegram_api_id: 0,
      telegram_api_hash: "",
      telegram_bot_token: "",
      telegram_bot_user_id: 0,
      telegram_owner_user_id: 0
    ),
  );
}
