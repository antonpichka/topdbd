import 'package:meta/meta.dart';

@immutable
final class UpdateUsernameAndGlobalNameToDiscordUserFirestoreUtility {
  final String uniqueId;
  final String uniqueIdByUser;
  final String newUsername;
  final String newGlobalName;

  const UpdateUsernameAndGlobalNameToDiscordUserFirestoreUtility(this.uniqueId, this.uniqueIdByUser, this.newUsername, this.newGlobalName);
}