import 'package:shared_preferences/shared_preferences.dart';

final class SharedPreferencesService {
  static final SharedPreferencesService instance = SharedPreferencesService._();
  static SharedPreferences? _sharedPreferences;

  SharedPreferencesService._();

  Future<SharedPreferences?> get getSharedPreferences
  async {
    if (_sharedPreferences != null) {
      return _sharedPreferences;
    }
    _sharedPreferences = await SharedPreferences.getInstance();
    return _sharedPreferences;
  }
}