import 'package:meta/meta.dart';

@immutable
abstract interface class IAuthDrawerViewModel {
  const IAuthDrawerViewModel();

  void clickOnMyUser(Function(String) callback);
  void logout(Function() callback);
  void download();
}