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
  DiscordUser get getCloneModel => DiscordUser(id, username, globalName);

  String getStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(String username, String globalName) {
    if(this.username != username) {
      return KeysExceptionUtility.discordUserQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName;
    }
    if(this.globalName != globalName) {
      return KeysExceptionUtility.discordUserQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalNameTWO;
    }
    return "";
  }
}