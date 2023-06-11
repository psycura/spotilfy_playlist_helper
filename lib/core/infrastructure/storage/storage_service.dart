import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotify_playlist_helper/core/data/errors/exceptions.dart';

export 'package:shared_preferences/shared_preferences.dart';

/// ## Database StorageService
/// Provide an API required for data persistence in local storage
abstract class IStorageService {
  Future<void> set<T>(String key, T value);

  Object? get<T>(
    String key, {
    T? defaultValue,
  });

  Future<void> delete(String key);

  bool containsKey(String key);

  /// Removes all entries from the [boxName].
  Future<void> clearAllValues();
}

class StorageService implements IStorageService {
  @protected
  final SharedPreferences prefs;

  StorageService(this.prefs);

  @override
  Future<void> clearAllValues() async {
    await prefs.clear();
  }

  @override
  Future<void> delete(String key) async {
    await prefs.remove(key);
  }

  @override
  Object? get<T>(String key, {T? defaultValue}) {
    final res = prefs.get(key);

    return res != null ? res as T : defaultValue;
  }

  @override
  Future<void> set<T>(String key, T value) async {
    if (T == String) {
      await prefs.setString(key, value as String);
    } else if (T == List<String>) {
      await prefs.setStringList(key, value as List<String>);
    } else if (T == int) {
      await prefs.setInt(key, value as int);
    } else if (T == double) {
      await prefs.setDouble(key, value as double);
    } else if (T == bool) {
      await prefs.setBool(key, value as bool);
    } else {
      throw IncompatibleDataException('$T type is not supported');
    }
  }

  @override
  bool containsKey(String key) => prefs.containsKey(key);
}
