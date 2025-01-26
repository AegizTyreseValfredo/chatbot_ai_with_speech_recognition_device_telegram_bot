// ignore_for_file: non_constant_identifier_names

import 'package:telegram_client/scheme/telegram_client_library_tdlib_option_parameter.dart';

///
extension TelegramClientLibraryTdlibOptionParameterExtensionChatbotAi on TelegramClientLibraryTdlibOptionParameter {
  ///
  String? get client_telegram_bot_token { 

    try {
      if (this["client_telegram_bot_token"] is String == false) {
        return null;
      }
      return this["client_telegram_bot_token"] as String;
    } catch (e) {
      return null;
    }
  }

  set client_telegram_bot_token(String? value) {
    this["client_telegram_bot_token"] = value;
  }


  ///
  num? get client_telegram_bot_user_id { 

    try {
      if (this["client_telegram_bot_user_id"] is num == false) {
        return null;
      }
      return this["client_telegram_bot_user_id"] as num;
    } catch (e) {
      return null;
    }
  }

  set client_telegram_bot_user_id(num? value) {
    this["client_telegram_bot_user_id"] = value;
  }
  ///
  num? get client_telegram_owner_user_id { 

    try {
      if (this["client_telegram_owner_user_id"] is num == false) {
        return null;
      }
      return this["client_telegram_owner_user_id"] as num;
    } catch (e) {
      return null;
    }
  }

  set client_telegram_owner_user_id(num? value) {
    this["client_telegram_owner_user_id"] = value;
  }

}
