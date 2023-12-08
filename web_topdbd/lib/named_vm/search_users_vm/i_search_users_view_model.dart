import 'package:meta/meta.dart';

@immutable
abstract interface class ISearchUsersViewModel {
  const ISearchUsersViewModel();

  void setValue(String value);
  void clearValue();
  void send(Function(String) callbackSuccess,Function(String) callbackException);
}