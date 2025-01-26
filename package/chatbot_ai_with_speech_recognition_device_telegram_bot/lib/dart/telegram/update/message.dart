// ignore_for_file: non_constant_identifier_names, empty_catches, public_member_api_docs

import 'dart:async';

import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot/dart/core/core.dart';
import 'package:chatbot_ai_with_speech_recognition_device_telegram_bot/dart/telegram/extension/map.dart';
import 'package:general_lib/general_lib.dart';
import 'package:telegram_client/scheme/telegram_client_library_tdlib_option_parameter.dart';
import 'package:telegram_client/telegram_client.dart';

///
extension ChatbotAiWithSpeechRecognitionDeviceTelegramBotTelegramUpdateCallbackMessageExtension on ChatbotAiWithSpeechRecognitionDeviceTelegramBot {
  FutureOr<Map?> telegram_update_message({
    required Map msg,
    required UpdateTelegramClient updateTelegramClient,
    required TelegramClientLibraryTdlibOptionParameter tdlibOptionParameter,
  }) async {
    if (msg["from"] is Map == false) {
      return null;
    }
    if (msg["chat"] is Map == false) {
      return null;
    }
    final Map msg_from = msg["from"];
    
    // ignore: unused_local_variable
    final int from_id = msg_from["id"];
    // ignore: unused_local_variable
    final int user_id = msg_from["id"];

    final Map msg_chat = msg["chat"];
    final int chat_id = msg_chat["id"];
    final String msg_caption_or_text = msg.getTelegramCaptionOrText();

    final RegExp regExpCommandPrefixTrigger = RegExp("^([!./])");

    final Map<dynamic, dynamic> parameterPatch = <dynamic, dynamic>{};
    if (msg["message_thread_id"] is int) {
      if (msg["is_topic_message"] == true) {
        parameterPatch["message_thread_id"] = msg["message_thread_id"];
        if (updateTelegramClient.telegramClientData.telegramClientType == TelegramClientType.tdlib) {
          if (msg["chat"]["detail"] is Map) {
            if (msg["chat"]["detail"]["is_forum"] != true) {
              parameterPatch.removeByKeys(["message_thread_id"]);
            }
          }
        }
      }
    }
    Future<Map> request({
      required String method,
      Map? parameters,
      bool is_form = false,
      bool is_parse_mode = true,
      bool isVoid = false,
      TelegramClientData? telegramClientData,
      bool? protect_content,
      // String? tokenBot,
    }) async {
      parameters ??= {};
      parameters["@type"] = method;
      telegramClientData ??= updateTelegramClient.telegramClientData;
      // tokenBot ??= clientGeneralBotData.client_token;
      try {
        parameters.addAll(parameterPatch);
      } catch (e) {}
      if (is_parse_mode) {
        parameters["parse_mode"] = "html";
      } else {}
      parameters["allow_sending_without_reply"] = true;
      if (protect_content != null) {
        parameters["protect_content"] = protect_content;
      }
      if (parameters["is_natural"] == true && RegExp("^(send)", caseSensitive: false).hashData(method)) {
        String request_action = "typing";

        if (parameters.containsKey("document")) {
          request_action = "upload_document";
        }
        if (parameters.containsKey("sticker")) {
          request_action = "choose_sticker";
        }
        if (parameters.containsKey("voice")) {
          request_action = "record_voice";
        }

        if (parameters.containsKey("photo")) {
          request_action = "upload_photo";
        }

        if (parameters.containsKey("video")) {
          request_action = "upload_video";
        }
        await telegramClient.request(
          parameters: {
            "@type": "sendChatAction",
            "chat_id": parameters["chat_id"],
            "action": request_action,
          },
          telegramClientData: telegramClientData,
          is_form: is_form,
        );

        String request_text = "";

        if (parameters["text"] is String) {
          request_text = parameters["text"];
        }
        if (parameters["caption"] is String) {
          request_text = parameters["caption"];
        }

        for (var i = 0; i < request_text.length; i++) {
          await Future.delayed(Duration(milliseconds: 1));
        }

        return (await telegramClient.request(
          // method,
          parameters: parameters,

          telegramClientData: telegramClientData,
          // tokenBot: tokenBot,
          is_form: is_form,
          // isAutoExtendMessage: true,
        ));
      }
      return (await telegramClient.request(
        // method,
        parameters: parameters,

        telegramClientData: telegramClientData,

        is_form: is_form,
        // isAutoExtendMessage: true,
      ));
    }

    if (regExpCommandPrefixTrigger.hasMatch(msg_caption_or_text)) {
      final String command = msg_caption_or_text.replaceAll(regExpCommandPrefixTrigger, "");
      if (RegExp(r"^(start)$", caseSensitive: false).hasMatch(command)) {
        return request(
          method: "sendMessage",
          parameters: {
            "chat_id": chat_id,
            "text": "Hallo",
            "reply_markup": {
              "inline_keyboard": [
                [
                  {
                    "text": "Main Menu",
                    "callback_data": "chatbot_ai main_menu",
                  }
                ]
              ]
            }
          },
        );
      }
    }
    return null;
  }
}
