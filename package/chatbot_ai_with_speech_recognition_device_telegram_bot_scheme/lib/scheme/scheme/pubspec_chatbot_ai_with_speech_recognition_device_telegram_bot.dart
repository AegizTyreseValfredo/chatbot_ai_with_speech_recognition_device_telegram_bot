/* <!-- START LICENSE -->


Program Ini Di buat Oleh DEVELOPER Dari PERUSAHAAN GLOBAL CORPORATION 
Social Media: 

- Youtube: https://youtube.com/@Global_Corporation 
- Github: https://github.com/globalcorporation
- TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

Seluruh kode disini di buat 100% murni tanpa jiplak / mencuri kode lain jika ada akan ada link komment di baris code

Jika anda mau mengedit pastikan kredit ini tidak di hapus / di ganti!

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "pubspec_chatbot_ai_with_speech_recognition_device_telegram_bot_platforms.dart";
import "pubspec_chatbot_ai_with_speech_recognition_device_telegram_bot_environment.dart";
import "pubspec_chatbot_ai_with_speech_recognition_device_telegram_bot_dependencies.dart";
import "pubspec_chatbot_ai_with_speech_recognition_device_telegram_bot_dev_dependencies.dart";
import "chatbot_ai_with_speech_recognition_device_telegram_bot_pubspec_config.dart";

class PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBot extends JsonScheme {
  PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBot(super.rawData);

  static Map get defaultData {
    return {
      "@type": "pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBot",
      "name": "example",
      "description": "A sample command-line application.",
      "version": "0.0.0",
      "publish_to": "none",
      "homepage": "https://youtube.com/{youtube_owner_username}",
      "repository": "https://github.com/{main_username_owner}/packagex.git",
      "issue_tracker":
          "https://github.com/{main_username_owner}/chatbot_ai_with_speech_recognition_device_telegram_bot/issues",
      "documentation":
          "https://github.com/{main_username_owner}/chatbot_ai_with_speech_recognition_device_telegram_bot/tree/main/docs",
      "funding": ["https://github.com/sponsors/{main_username_owner}"],
      "platforms": {
        "@type": "pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms",
        "android": null,
        "ios": null,
        "linux": null,
        "macos": null,
        "web": null,
        "windows": null
      },
      "environment": {
        "@type": "pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotEnvironment",
        "sdk": ">=2.18.5 <3.0.0"
      },
      "dependencies": {
        "@type": "pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies",
        "flutter": {
          "@type": "pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependenciesExtra",
          "sdk": "flutter"
        },
        "cupertino_icons": "^1.0.2"
      },
      "dev_dependencies": {
        "@type": "pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDevDependencies",
        "lints": "^2.0.0",
        "test": "^1.16.0",
        "packagex": {
          "@type": "pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDevDependenciesExtra",
          "path": "../"
        },
        "msix": "^1.0.6"
      },
      "chatbot_ai_with_speech_recognition_device_telegram_bot": {"@type": "packageFullTemplatePubspecConfig"}
    };
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_type(String? value) {
    rawData["@type"] = value;
  }

  String? get name {
    try {
      if (rawData["name"] is String == false) {
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }

  set name(String? value) {
    rawData["name"] = value;
  }

  String? get description {
    try {
      if (rawData["description"] is String == false) {
        return null;
      }
      return rawData["description"] as String;
    } catch (e) {
      return null;
    }
  }

  set description(String? value) {
    rawData["description"] = value;
  }

  String? get version {
    try {
      if (rawData["version"] is String == false) {
        return null;
      }
      return rawData["version"] as String;
    } catch (e) {
      return null;
    }
  }

  set version(String? value) {
    rawData["version"] = value;
  }

  String? get publish_to {
    try {
      if (rawData["publish_to"] is String == false) {
        return null;
      }
      return rawData["publish_to"] as String;
    } catch (e) {
      return null;
    }
  }

  set publish_to(String? value) {
    rawData["publish_to"] = value;
  }

  String? get homepage {
    try {
      if (rawData["homepage"] is String == false) {
        return null;
      }
      return rawData["homepage"] as String;
    } catch (e) {
      return null;
    }
  }

  set homepage(String? value) {
    rawData["homepage"] = value;
  }

  String? get repository {
    try {
      if (rawData["repository"] is String == false) {
        return null;
      }
      return rawData["repository"] as String;
    } catch (e) {
      return null;
    }
  }

  set repository(String? value) {
    rawData["repository"] = value;
  }

  String? get issue_tracker {
    try {
      if (rawData["issue_tracker"] is String == false) {
        return null;
      }
      return rawData["issue_tracker"] as String;
    } catch (e) {
      return null;
    }
  }

  set issue_tracker(String? value) {
    rawData["issue_tracker"] = value;
  }

  String? get documentation {
    try {
      if (rawData["documentation"] is String == false) {
        return null;
      }
      return rawData["documentation"] as String;
    } catch (e) {
      return null;
    }
  }

  set documentation(String? value) {
    rawData["documentation"] = value;
  }

  List<String> get funding {
    try {
      if (rawData["funding"] is List == false) {
        return [];
      }
      return (rawData["funding"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  set funding(List<String> value) {
    rawData["funding"] = value;
  }

  PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms get platforms {
    try {
      if (rawData["platforms"] is Map == false) {
        return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms({});
      }
      return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms(
          rawData["platforms"] as Map);
    } catch (e) {
      return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms({});
    }
  }

  set platforms(PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms value) {
    rawData["platforms"] = value.toJson();
  }

  PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotEnvironment get environment {
    try {
      if (rawData["environment"] is Map == false) {
        return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotEnvironment({});
      }
      return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotEnvironment(
          rawData["environment"] as Map);
    } catch (e) {
      return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotEnvironment({});
    }
  }

  set environment(PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotEnvironment value) {
    rawData["environment"] = value.toJson();
  }

  PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies get dependencies {
    try {
      if (rawData["dependencies"] is Map == false) {
        return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies({});
      }
      return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies(
          rawData["dependencies"] as Map);
    } catch (e) {
      return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies({});
    }
  }

  set dependencies(PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies value) {
    rawData["dependencies"] = value.toJson();
  }

  PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDevDependencies get dev_dependencies {
    try {
      if (rawData["dev_dependencies"] is Map == false) {
        return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDevDependencies({});
      }
      return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDevDependencies(
          rawData["dev_dependencies"] as Map);
    } catch (e) {
      return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDevDependencies({});
    }
  }

  set dev_dependencies(PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDevDependencies value) {
    rawData["dev_dependencies"] = value.toJson();
  }

  ChatbotAiWithSpeechRecognitionDeviceTelegramBotPubspecConfig get chatbot_ai_with_speech_recognition_device_telegram_bot {
    try {
      if (rawData["chatbot_ai_with_speech_recognition_device_telegram_bot"] is Map == false) {
        return ChatbotAiWithSpeechRecognitionDeviceTelegramBotPubspecConfig({});
      }
      return ChatbotAiWithSpeechRecognitionDeviceTelegramBotPubspecConfig(
          rawData["chatbot_ai_with_speech_recognition_device_telegram_bot"] as Map);
    } catch (e) {
      return ChatbotAiWithSpeechRecognitionDeviceTelegramBotPubspecConfig({});
    }
  }

  set chatbot_ai_with_speech_recognition_device_telegram_bot(ChatbotAiWithSpeechRecognitionDeviceTelegramBotPubspecConfig value) {
    rawData["chatbot_ai_with_speech_recognition_device_telegram_bot"] = value.toJson();
  }

  static PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBot create({
    String special_type = "pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBot",
    String? name,
    String? description,
    String? version,
    String? publish_to,
    String? homepage,
    String? repository,
    String? issue_tracker,
    String? documentation,
    List<String>? funding,
    PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms? platforms,
    PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotEnvironment? environment,
    PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies? dependencies,
    PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDevDependencies? dev_dependencies,
    ChatbotAiWithSpeechRecognitionDeviceTelegramBotPubspecConfig? chatbot_ai_with_speech_recognition_device_telegram_bot,
  }) {
    // PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBot pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBot = PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBot({
    Map pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBot_data_create_json = {
      "@type": special_type,
      "name": name,
      "description": description,
      "version": version,
      "publish_to": publish_to,
      "homepage": homepage,
      "repository": repository,
      "issue_tracker": issue_tracker,
      "documentation": documentation,
      "funding": funding,
      "platforms": (platforms != null) ? platforms.toJson() : null,
      "environment": (environment != null) ? environment.toJson() : null,
      "dependencies": (dependencies != null) ? dependencies.toJson() : null,
      "dev_dependencies":
          (dev_dependencies != null) ? dev_dependencies.toJson() : null,
      "chatbot_ai_with_speech_recognition_device_telegram_bot": (chatbot_ai_with_speech_recognition_device_telegram_bot != null)
          ? chatbot_ai_with_speech_recognition_device_telegram_bot.toJson()
          : null,
    };

    pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBot_data_create_json
        .removeWhere((key, value) => value == null);
    PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBot pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBot_data_create =
        PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBot(
            pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBot_data_create_json);

    return pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBot_data_create;
  }
}

