// ignore_for_file: file_names, prefer_const_declarations

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserStorageService {
  static final _storage = const FlutterSecureStorage();

  static Future writeSecureData(String key, String value) async {
    var writeData = await _storage.write(key: key, value: value);
    return writeData;
  }

  static Future readSecureData(String key) async {
    var readData = await _storage.read(key: key);
    return readData;
  }

  static Future deleteSecureData(String key) async {
    var readData = await _storage.delete(key: key);
    return readData;
  }
}
