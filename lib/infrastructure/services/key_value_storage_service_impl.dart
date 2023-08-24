

import 'package:flutter_demo_app_jornaleros/infrastructure/services/key_value_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KeyValueStorageServiceImpl extends KeyValueStorageService {

  Future<SharedPreferences> getSharedPrefs() async {
    return await SharedPreferences.getInstance();
  }

  @override
  Future<T?> getValue<T>(String key) async {

    final prefs = await getSharedPrefs();

    if (T == int ){
      return prefs.getInt(key) as T?;
    } else if (T == String){
      return prefs.getString(key) as T?;
    } else {
      return prefs.getString(key) as T?;
    }
    
  }

  @override
  Future<bool> removeKey(String key) async {
    final prefs = await getSharedPrefs();
    return await prefs.remove(key);
  }

  @override
  Future<void> setKeyValue<T>(String key, T value) async {

    final prefs = await getSharedPrefs();

    switch(T) {
      case int:
        prefs.setInt(key, value as int);
        break;

      case String:
        prefs.setString(key, value as String);

      default:
      throw UnimplementedError('Set not implemented for type ${T.runtimeType}');
    }

  }

}