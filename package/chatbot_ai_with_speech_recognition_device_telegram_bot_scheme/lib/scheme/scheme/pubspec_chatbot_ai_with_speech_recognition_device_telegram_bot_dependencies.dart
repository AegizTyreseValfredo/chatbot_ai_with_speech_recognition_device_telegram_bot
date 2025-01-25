// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "pubspec_chatbot_ai_with_speech_recognition_device_telegram_bot_dependencies_extra.dart";

/// Generated 
class PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies extends JsonScheme {

  /// Generated
  PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies","flutter":{"@type":"pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependenciesExtra","sdk":"flutter"},"cupertino_icons":"^1.0.2"};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  

  /// create [PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies]
  /// Empty  
  static PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies empty() {
    return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies({});
  }

  

  /// Generated
  String? get special_type {
    try {
      if (rawData["@type"] is String == false){
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set special_type(String? value) {
    rawData["@type"] = value;
  }


  /// Generated
  PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependenciesExtra get flutter {
    try {
      if (rawData["flutter"] is Map == false){
        return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependenciesExtra({}); 
      }
      return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependenciesExtra(rawData["flutter"] as Map);
    } catch (e) {  
      return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependenciesExtra({}); 
    }
  }


  /// Generated
  set flutter(PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependenciesExtra value) {
    rawData["flutter"] = value.toJson();
  }



  /// Generated
  String? get cupertino_icons {
    try {
      if (rawData["cupertino_icons"] is String == false){
        return null;
      }
      return rawData["cupertino_icons"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set cupertino_icons(String? value) {
    rawData["cupertino_icons"] = value;
  }


  /// Generated
  static PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies",
      PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependenciesExtra? flutter,
    String? cupertino_icons,
})  {
    // PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies = PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies({
final Map pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies_data_create_json = {
  
      "@type": special_type,
      "flutter": (flutter != null)?flutter.toJson(): null,
      "cupertino_icons": cupertino_icons,


};


          pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies_data_create_json.containsKey(key) == false) {
          pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies_data_create_json[key] = value;
        }
      });
    }
return PubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies(pubspecChatbotAiWithSpeechRecognitionDeviceTelegramBotDependencies_data_create_json);


      }
}