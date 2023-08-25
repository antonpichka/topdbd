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
  DiscordUser get getCloneModel => DiscordUser.success(uniqueId, username, globalName);
}