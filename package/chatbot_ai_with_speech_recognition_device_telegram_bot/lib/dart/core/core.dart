import 'dart:async';

import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot_database/database/core.dart';
import 'package:server_universe/native/native.dart';
import 'package:telegram_client/telegram_client.dart';
 import 'package:whisper_dart/whisper_dart.dart';

///
class ChatbotAiWithSpeechRecognitionDeviceTelegramBot {
  ///
  final ServerUniverseNative serverUniverse;

  ///
  final ChatbotAiWithSpeechRecognitionDeviceTelegramBotDatabase database;

  ///
  final TelegramClient telegramClient;

  ///

  final Whisper whisper;

  ///
  ChatbotAiWithSpeechRecognitionDeviceTelegramBot({
    required this.serverUniverse,
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
    _isInitialized = true;
  }
}
