// ignore_for_file: unnecessary_brace_in_string_interps, non_constant_identifier_names

import 'dart:async';
import 'dart:io';
import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot_database_universe_scheme/chatbot_ai_with_speech_recognition_device_telegram_bot_database_universe_scheme.dart';
import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot_scheme/scheme/scheme/chatbot_ai_with_speech_recognition_device_telegram_bot_configuration.dart';
import 'package:database_universe/database_universe.dart';
import 'package:general_lib/log/log.dart';
import "package:path/path.dart" as path;

import 'package:general_lib/general_lib.dart';

/// Program Created By AegizTyreseValfredo From General Corporation & Global Corporation
/// if you need some help or more update or more documentation
/// you should follow up General corporation & Global Corporation
class ChatbotAiWithSpeechRecognitionDeviceTelegramBotDatabase {
  final ChatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration;
  final GeneralLibraryLog generalLibraryLog;

  ///
  ChatbotAiWithSpeechRecognitionDeviceTelegramBotDatabase({
    required this.chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration,
    required this.generalLibraryLog,
  });

  late final DatabaseUniverse database_universe_core;

  late final String currentPath;
  bool _isInitialized = false;

  Future<void> ensureInitialized({
    required String currentPath,
  }) async {
    if (_isInitialized) {
      return;
    }
    this.currentPath = currentPath;
    ensureInitializedDatabase();

    /// check apakah web
    if (Dart.isWeb == false) {
      database_universe_core = await openDatabaseUniverse(
        name: "chatbot_ai_telegram_general_public_database",
        maxSizeMiB: null,
      );
    }
    _isInitialized = true;
    await generalLibraryLog.printToTerminal(
      logMessage: GeneralLibraryLogMessage(
        value: "Database Initialized",
        isForcePrint: false,
        stackTrace: StackTrace.current,
        isFullDetail: false,
        logMessageType: GeneralLibraryLogMessageType.succes,
        logOptions: null,
      ),
    );
  }

  int local_size_total() {
    return ((database_universe_core.getSize()));
  }

  Directory get directory_database {
    final Directory directory = Directory(path.join(currentPath, "chatbot_ai_telegram_general_public_database"));
    if (Dart.isWeb) {
      return directory;
    }
    if (directory.existsSync() == false) {
      directory.createSync(recursive: true);
    }
    return directory;
  }

  Directory get directory_files {
    final Directory directory = Directory(path.join(currentPath, "chatbot_ai_telegram_general_public_files"));
    if (Dart.isWeb) {
      return directory;
    }
    if (directory.existsSync() == false) {
      directory.createSync(recursive: true);
    }
    return directory;
  }

  Directory get directory_temp {
    final Directory directory = Directory(path.join(currentPath, "chatbot_ai_telegram_general_public_temp"));
    if (Dart.isWeb) {
      return directory;
    }
    if (directory.existsSync() == false) {
      directory.createSync(recursive: true);
    }
    return directory;
  }

  Directory get directory_telegram_tdlib {
    final Directory directory = Directory(path.join(currentPath, "chatbot_ai_telegram_tdlib"));
    if (Dart.isWeb) {
      return directory;
    }
    if (directory.existsSync() == false) {
      directory.createSync(recursive: true);
    }
    return directory;
  }

  void ensureInitializedDatabase() {
    {
      directory_database;
      directory_files;
      directory_temp;
      directory_telegram_tdlib;
    }
  }

  Future<DatabaseUniverse> openDatabaseUniverse({
    required String name,
    required int? maxSizeMiB,
  }) async {
    int tryCount = 0;
    while (true) {
      await Future.delayed(Duration(milliseconds: 1));
      tryCount++;
      try {
        return DatabaseUniverse.open(
          schemas: ChatbotAiWithSpeechRecognitionDeviceTelegramBotDatabaseUniverseScheme.schemas,
          directory: directory_database.path,
          name: name,
          maxSizeMiB: maxSizeMiB ?? DatabaseUniverse.defaultMaxSizeMiB * 100,
        );
      } catch (e) {
        if (tryCount > 2) {
          rethrow;
        }
        for (var element in [
          File(path.join(directory_database.path, "${name}.isar")),
          File(path.join(directory_database.path, "${name}.isar.lock")),
        ]) {
          if (element.existsSync()) {
            element.deleteSync(recursive: true);
          }
        }
      }
    }
  }
}
