import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class UIBUWUBDU extends BaseModel {
  final String uniqueIdByUser;
  final String usernameByDiscordUser;

  const UIBUWUBDU(this.uniqueIdByUser, this.usernameByDiscordUser) : super(uniqueIdByUser);

  @override
  UIBUWUBDU get getClone => UIBUWUBDU(uniqueIdByUser,usernameByDiscordUser);

  @override
  String toString() {
    return "UIBUWUBDU(uniqueIdByUser: $uniqueIdByUser, "
        "usernameByDiscordUser: $usernameByDiscordUser)";
  }
}