import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class DiscordUserFirestore extends BaseModel {
  final String? uniqueIdByUser;
  final String? username;
  final String? globalName;

  DiscordUserFirestore.success(super.uniqueId,this.uniqueIdByUser,this.username,this.globalName) : super.success();
  DiscordUserFirestore.exception(super.exception) :
        uniqueIdByUser = null,
        username = null,
        globalName = null,
        super.exception();

  @override
  DiscordUserFirestore get getCloneModel => DiscordUserFirestore.success(uniqueId,uniqueIdByUser,username,globalName);
}