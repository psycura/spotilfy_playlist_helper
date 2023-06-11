import 'dart:convert';

abstract class HttpUtils {
  static Codec<String, String> stringToBase64 = utf8.fuse(base64);

  static String encodeToBase64(String src) => stringToBase64.encode(src);
}
