import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class UIBUWUBDU extends BaseModel {
  final String uniqueIdByUser;
  final String usernameByDiscordUser;
  final bool isAdminByRoleUser;

  const UIBUWUBDU(this.uniqueIdByUser,this.usernameByDiscordUser,this.isAdminByRoleUser) : super(uniqueIdByUser);

  @override
  UIBUWUBDU get getClone => UIBUWUBDU(uniqueIdByUser,usernameByDiscordUser,isAdminByRoleUser);

  @override
  String toString() {
    return "UIBUWUBDU(uniqueIdByUser: $uniqueIdByUser, "
        "usernameByDiscordUser: $usernameByDiscordUser, "
        "isAdminByRoleUser: $isAdminByRoleUser)";
  }
}