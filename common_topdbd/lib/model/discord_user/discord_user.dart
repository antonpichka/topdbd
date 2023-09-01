import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class DiscordUser extends BaseModel {
  final String? id;
  final String? username;
  final String? globalName;

  DiscordUser.success(this.id,this.username,this.globalName) : super.success(id);
  DiscordUser.exception(super.exception) :
        id = null,
        username = null,
        globalName = null,
        super.exception();

  @override
  DiscordUser get getCloneModel => DiscordUser.success(id, username, globalName);

  String? getStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(String username, String globalName) {
    if(this.username != username) {
      return KeysExceptionUtility.discordUserQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName;
    }
    if(this.globalName != globalName) {
      return KeysExceptionUtility.discordUserQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalNameTWO;
    }
    return "";
  }
}