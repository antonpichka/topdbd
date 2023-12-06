import 'package:meta/meta.dart';

@immutable
abstract interface class IAuthTitleWAppBarViewModel {
  const IAuthTitleWAppBarViewModel();

  void clickOnMyUser(Function(String) callback);
  void logout(Function() callback);
}