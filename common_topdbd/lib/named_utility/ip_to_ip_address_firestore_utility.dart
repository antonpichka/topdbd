import 'package:meta/meta.dart';

@immutable
final class IPToIPAddressFirestoreUtility {
  final String uniqueIdByUser;
  final String ip;

  const IPToIPAddressFirestoreUtility(this.uniqueIdByUser, this.ip);
}