import 'package:meta/meta.dart';

@immutable
final class RegistrationDiscordUserFirestoreUtility {
  final String uniqueId;
  final String uniqueIdByUser;
  final String username;
  final String globalName;

  const RegistrationDiscordUserFirestoreUtility(this.uniqueId, this.uniqueIdByUser, this.username, this.globalName);
}