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

class PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms extends JsonScheme {
  PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms(super.rawData);

  static Map get defaultData {
    return {
      "@type": "pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms",
      "android": null,
      "ios": null,
      "linux": null,
      "macos": null,
      "web": null,
      "windows": null
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

  Object? get android {
    try {
      if (rawData["android"] is Object == false) {
        return null;
      }
      return rawData["android"] as Object;
    } catch (e) {
      return null;
    }
  }

  set android(Object? value) {
    rawData["android"] = value;
  }

  Object? get ios {
    try {
      if (rawData["ios"] is Object == false) {
        return null;
      }
      return rawData["ios"] as Object;
    } catch (e) {
      return null;
    }
  }

  set ios(Object? value) {
    rawData["ios"] = value;
  }

  Object? get linux {
    try {
      if (rawData["linux"] is Object == false) {
        return null;
      }
      return rawData["linux"] as Object;
    } catch (e) {
      return null;
    }
  }

  set linux(Object? value) {
    rawData["linux"] = value;
  }

  Object? get macos {
    try {
      if (rawData["macos"] is Object == false) {
        return null;
      }
      return rawData["macos"] as Object;
    } catch (e) {
      return null;
    }
  }

  set macos(Object? value) {
    rawData["macos"] = value;
  }

  Object? get web {
    try {
      if (rawData["web"] is Object == false) {
        return null;
      }
      return rawData["web"] as Object;
    } catch (e) {
      return null;
    }
  }

  set web(Object? value) {
    rawData["web"] = value;
  }

  Object? get windows {
    try {
      if (rawData["windows"] is Object == false) {
        return null;
      }
      return rawData["windows"] as Object;
    } catch (e) {
      return null;
    }
  }

  set windows(Object? value) {
    rawData["windows"] = value;
  }

  static PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms create({
    String special_type = "pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms",
    Object? android,
    Object? ios,
    Object? linux,
    Object? macos,
    Object? web,
    Object? windows,
  }) {
    // PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms = PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms({
    Map pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms_data_create_json = {
      "@type": special_type,
      "android": android,
      "ios": ios,
      "linux": linux,
      "macos": macos,
      "web": web,
      "windows": windows,
    };

    pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms_data_create_json
        .removeWhere((key, value) => value == null);
    PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms
        pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms_data_create =
        PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms(
            pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms_data_create_json);

    return pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotPlatforms_data_create;
  }
}

