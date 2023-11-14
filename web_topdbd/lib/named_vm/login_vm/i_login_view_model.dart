import 'package:meta/meta.dart';

@immutable
abstract interface class ILoginViewModel {
  const ILoginViewModel();

  void setCheckAgreeTermsOfUse(bool? isCheck);
  Future<void> signInWithDiscord(Function(String) callbackException);
}