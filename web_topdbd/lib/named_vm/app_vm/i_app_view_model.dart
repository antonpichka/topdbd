import 'package:meta/meta.dart';

@immutable
abstract interface class IAppViewModel {
  const IAppViewModel();

  void listeningStreamsTempCacheService();
  void setNameRoute(String rawNameRoute,Function(String) callbackWRedirect);
}