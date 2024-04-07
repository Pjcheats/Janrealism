import 'dart:convert';
import 'package:crypto/crypto.dart';


class HashUtil {
  // Generate SHA256 hash
  String generateSHA256Hash(String input) {
    var bytes = utf8.encode(input); // data being hashed
    var digest = sha256.convert(bytes);
    return digest.toString();
  }

  // Generate MD5 hash
  String generateMD5Hash(String input) {
    var bytes = utf8.encode(input); // data being hashed
    var digest = md5.convert(bytes);
    return digest.toString();
  }
}