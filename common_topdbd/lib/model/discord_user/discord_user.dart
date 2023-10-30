import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class DiscordUser extends BaseModel {
  final String id;
  final String username;
  final String globalName;

  const DiscordUser(this.id,this.username,this.globalName) : super(id);

  @override
  DiscordUser get getClone => DiscordUser(id, username, globalName);

  String getExceptionInStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(String username, String globalName) {
    if(this.username != username) {
      return KeysExceptionUtility.discordUserQQGetExceptionInStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName;
    }
    if(this.globalName != globalName) {
      return KeysExceptionUtility.discordUserQQGetExceptionInStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalNameFIRST;
    }
    return "";
  }

  @override
  String toString() {
    return "DiscordUser(id: $id, "
        "username: $username, "
        "globalName: $globalName)";
  }
}