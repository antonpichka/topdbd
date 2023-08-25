import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class DiscordUser extends BaseModel {
  final String? username;
  final String? globalName;

  DiscordUser.success(super.uniqueId,this.username,this.globalName) : super.success();
  DiscordUser.exception(super.exception) :
        username = null,
        globalName = null,
        super.exception();

  @override
  DiscordUser get getCloneModel => DiscordUser.success(uniqueId, username, globalName);
}