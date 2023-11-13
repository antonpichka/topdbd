import 'package:meta/meta.dart';

@immutable
abstract interface class IAuthMainViewModel {
  const IAuthMainViewModel();

  Future<void> listeningStreamsFirebaseFirestoreService();
}