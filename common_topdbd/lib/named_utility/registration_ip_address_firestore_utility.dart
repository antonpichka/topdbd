import 'package:meta/meta.dart';

@immutable
final class RegistrationIPAddressFirestoreUtility {
  final String uniqueIdByUser;
  final String ip;

  const RegistrationIPAddressFirestoreUtility(this.uniqueIdByUser, this.ip);
}