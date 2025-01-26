// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


/// Generated 
class ChatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration extends JsonScheme {

  /// Generated
  ChatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration","telegram_api_id":0,"telegram_api_hash":"","telegram_bot_token":"","whisper_model_file_path":""};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration
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

  

  /// create [ChatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration]
  /// Empty  
  static ChatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration empty() {
    return ChatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration({});
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
  num? get telegram_api_id {
    try {
      if (rawData["telegram_api_id"] is num == false){
        return null;
      }
      return rawData["telegram_api_id"] as num;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set telegram_api_id(num? value) {
    rawData["telegram_api_id"] = value;
  }


  /// Generated
  String? get telegram_api_hash {
    try {
      if (rawData["telegram_api_hash"] is String == false){
        return null;
      }
      return rawData["telegram_api_hash"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set telegram_api_hash(String? value) {
    rawData["telegram_api_hash"] = value;
  }


  /// Generated
  String? get telegram_bot_token {
    try {
      if (rawData["telegram_bot_token"] is String == false){
        return null;
      }
      return rawData["telegram_bot_token"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set telegram_bot_token(String? value) {
    rawData["telegram_bot_token"] = value;
  }


  /// Generated
  String? get whisper_model_file_path {
    try {
      if (rawData["whisper_model_file_path"] is String == false){
        return null;
      }
      return rawData["whisper_model_file_path"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set whisper_model_file_path(String? value) {
    rawData["whisper_model_file_path"] = value;
  }


  /// Generated
  static ChatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration",
    num? telegram_api_id,
    String? telegram_api_hash,
    String? telegram_bot_token,
    String? whisper_model_file_path,
})  {
    // ChatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration = ChatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration({
final Map chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration_data_create_json = {
  
      "@type": special_type,
      "telegram_api_id": telegram_api_id,
      "telegram_api_hash": telegram_api_hash,
      "telegram_bot_token": telegram_bot_token,
      "whisper_model_file_path": whisper_model_file_path,


};


          chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration_data_create_json.containsKey(key) == false) {
          chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration_data_create_json[key] = value;
        }
      });
    }
return ChatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration(chatbotAiWithSpeechRecognitionDeviceTelegramBotConfiguration_data_create_json);


      }
}