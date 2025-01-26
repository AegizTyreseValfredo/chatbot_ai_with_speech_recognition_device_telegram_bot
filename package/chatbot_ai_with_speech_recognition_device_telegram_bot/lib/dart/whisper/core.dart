// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:io';

import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot/dart/core/core.dart';
import 'package:whisper_dart/whisper_dart.dart';
import "package:path/path.dart" as path;

///
extension ChatbotAiWithSpeechRecognitionDeviceTelegramBotWhisperExtension on ChatbotAiWithSpeechRecognitionDeviceTelegramBot {
  ///
  FutureOr<WhisperResponse> whisperTranscribeAudio({
    required File audioFile,
    int threads = 4,
    bool is_verbose = false,
    bool is_translate = false,
    bool isInIsolate = false,
    String language = "id",
  }) async {
    return await whisper.request(
      isInIsolate: isInIsolate,
      whisperRequest: WhisperRequest.fromWavFile(
        audio: WhisperAudioconvert.convert(
          audioInput: audioFile,
          audioOutput: File(path.join(audioFile.parent.path, "converted-${path.basename(audioFile.path)}")),
        ),
        model: File(database.chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration.whisper_model_file_path ?? ""),
        threads: threads,
        is_verbose: is_verbose,
        language: language,
        is_translate: is_translate,
      ),
    );
  }
}
