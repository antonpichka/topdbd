import 'package:meta/meta.dart';

@immutable
abstract interface class IAppViewModel {
  const IAppViewModel();

  void listeningStreamsTempCacheService();
  void listeningStreamsFirebaseFirestoreService();
  void setNameRoute(String rawNameRoute);
  void notifyStreamDataForAppView();
}