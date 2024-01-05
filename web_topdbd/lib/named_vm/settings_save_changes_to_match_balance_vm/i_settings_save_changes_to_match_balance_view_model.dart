import 'package:meta/meta.dart';

@immutable
abstract interface class ISettingsSaveChangesToMatchBalanceViewModel {
  const ISettingsSaveChangesToMatchBalanceViewModel();

  void listeningTempCacheService();
  void onPressedSaveChanges(Function() callbackSuccess, Function(String) callbackException);
}
