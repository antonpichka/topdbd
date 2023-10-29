import 'package:shared_preferences/shared_preferences.dart';

final class SharedPreferencesService {
  static final SharedPreferencesService instance = SharedPreferencesService._();
  SharedPreferences? _sharedPreferences;

  SharedPreferencesService._();

  Future<SharedPreferences?> get getParameterSharedPreferences
  async {
    if (_sharedPreferences != null) {
      return _sharedPreferences;
    }
    _sharedPreferences = await SharedPreferences.getInstance();
    return _sharedPreferences;
  }
}