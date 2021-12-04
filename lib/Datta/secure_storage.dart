import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static FlutterSecureStorage _flutterSecureStorage = FlutterSecureStorage();

  static Future<String> getStoredValue(key) async =>
      await _flutterSecureStorage.read(key: key);
  static Future<Map<String, dynamic>> getAllStoredValue() async =>
      await _flutterSecureStorage.readAll();
  static Future<void> deleteValue(key) async =>
      await _flutterSecureStorage.delete(key: key);
   static Future<void> deleteAllStored() async =>
      await _flutterSecureStorage.deleteAll();
       static Future<void> saveValue(key, value) async =>
      await _flutterSecureStorage.write(key: key, value: value);
}