// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


/// Generated 
class Error extends JsonScheme {

  /// Generated
  Error(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"error","message":""};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == error
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

  

  /// create [Error]
  /// Empty  
  static Error empty() {
    return Error({});
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
  String? get message {
    try {
      if (rawData["message"] is String == false){
        return null;
      }
      return rawData["message"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set message(String? value) {
    rawData["message"] = value;
  }


  /// Generated
  static Error create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "error",
    String? message,
})  {
    // Error error = Error({
final Map error_data_create_json = {
  
      "@type": special_type,
      "message": message,


};


          error_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (error_data_create_json.containsKey(key) == false) {
          error_data_create_json[key] = value;
        }
      });
    }
return Error(error_data_create_json);


      }
}