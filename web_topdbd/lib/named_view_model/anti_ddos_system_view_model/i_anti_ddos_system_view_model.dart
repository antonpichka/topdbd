import 'package:meta/meta.dart';

@immutable
abstract interface class IAntiDDosSystemViewModel {
  const IAntiDDosSystemViewModel();
  
  void setInputCode(String inputCode);
  void clickButtonDone(Function() callbackSuccess,Function(String) callbackException);
}