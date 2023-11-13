import 'package:meta/meta.dart';

@immutable
abstract interface class IAppViewModel {
  const IAppViewModel();

  void listeningStreamsTempCacheService();
  void listeningStreamsFirebaseFirestoreService();
  void notifyStreamDataForAppView();
}