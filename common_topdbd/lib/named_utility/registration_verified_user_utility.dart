import 'package:meta/meta.dart';

@immutable
final class RegistrationVerifiedUserUtility {
  final String uniqueIdByUser;
  final bool isVerifiedUser;

  const RegistrationVerifiedUserUtility(this.uniqueIdByUser, this.isVerifiedUser);
}