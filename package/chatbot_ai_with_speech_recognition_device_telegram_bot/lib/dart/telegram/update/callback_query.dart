// ignore_for_file: non_constant_identifier_names, empty_catches

import 'dart:async';
import 'dart:io';

import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot/dart/core/core.dart';
import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot/dart/telegram/extension/tdlib_option.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_lib/log/log.dart';
import 'package:telegram_client/scheme/telegram_client_library_tdlib_option_parameter.dart';
import 'package:telegram_client/telegram_client.dart';
import "package:path/path.dart" as path;

///
extension ChatbotAiWithSpeechRecognitionDeviceTelegramBotTelegramUpdateCallbackQueryExtension on ChatbotAiWithSpeechRecognitionDeviceTelegramBot {

  FutureOr<Map?> telegram_update_callback_query({
    required Map msg,
    required UpdateTelegramClient updateTelegramClient,
    required TelegramClientLibraryTdlibOptionParameter tdlibOptionParameter,
  }) async {

    return null;
  }
}
