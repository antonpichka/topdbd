import 'package:meta/meta.dart';

@immutable
final class UsernameWGlobalNameToDiscordUserFirestoreUtility {
  final String uniqueId;
  final String uniqueIdByUser;
  final String newUsername;
  final String newGlobalName;

  const UsernameWGlobalNameToDiscordUserFirestoreUtility(this.uniqueId, this.uniqueIdByUser, this.newUsername, this.newGlobalName);
}