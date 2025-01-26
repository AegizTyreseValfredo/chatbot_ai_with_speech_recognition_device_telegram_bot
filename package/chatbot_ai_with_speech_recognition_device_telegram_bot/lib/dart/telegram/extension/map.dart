final Set<String> telegramCaptionOrTextKeys = {
  "text",
  "caption",
};

extension TelegramClientLibraryTdlibOptionParameterExtensionMap on Map {
  String getTelegramCaptionOrText() {
    for (final element in telegramCaptionOrTextKeys) {
      final value = this[element];
      if (value is String && value.isNotEmpty) {
        return value;
      }
    }
    return "";
  }
}
