import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

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

  String? getStringFromDiscordUserFirestoreWhereNotEqualsParametersUsernameAndGlobalName(DiscordUserFirestore discordUserFirestore) {
    if(username != discordUserFirestore.username) {
      return KeysExceptionUtility.discordUserQGetStringFromDiscordUserFirestoreWhereNotEqualsParametersUsernameAndGlobalName;
    }
    if(globalName != discordUserFirestore.globalName) {
      return KeysExceptionUtility.discordUserQGetStringFromDiscordUserFirestoreWhereNotEqualsParametersUsernameAndGlobalNameTWO;
    }
    return "";
  }
}