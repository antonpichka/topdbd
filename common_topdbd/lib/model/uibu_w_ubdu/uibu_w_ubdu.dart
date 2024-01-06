import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class UIBUWUBDU extends BaseModel {
  final String uniqueIdByUser;
  final String usernameByDiscordUser;
  final bool isAdminByRoleUser;
  final bool isVerifiedUserByVerifiedUser;
  final DateTime endOfTemporaryAccessByVerifiedUser;
  final bool isHacked;

  const UIBUWUBDU(this.uniqueIdByUser,this.usernameByDiscordUser,this.isAdminByRoleUser,this.isVerifiedUserByVerifiedUser,this.endOfTemporaryAccessByVerifiedUser,this.isHacked) : super(uniqueIdByUser);

  @override
  UIBUWUBDU get getClone => UIBUWUBDU(uniqueIdByUser,usernameByDiscordUser,isAdminByRoleUser,isVerifiedUserByVerifiedUser,endOfTemporaryAccessByVerifiedUser,isHacked);

  @override
  String toString() {
    return "UIBUWUBDU(uniqueIdByUser: $uniqueIdByUser, "
        "usernameByDiscordUser: $usernameByDiscordUser, "
        "isAdminByRoleUser: $isAdminByRoleUser, "
        "isVerifiedUserByVerifiedUser: $isVerifiedUserByVerifiedUser, "
        "endOfTemporaryAccessByVerifiedUser: $endOfTemporaryAccessByVerifiedUser, "
        "isHacked: $isHacked)";
  }

  bool isWhereNotEmptyAndNotVerifiedUserParametersUniqueIdByUserAndIsVerifiedUserByVerifiedUser() {
    return uniqueIdByUser.isNotEmpty && !isVerifiedUserByVerifiedUser;
  }

  bool isWhereLessThanFromDateTimeParameterEndOfTemporaryAccessByVerifiedUser(DateTime dateTime) {
    return dateTime.millisecondsSinceEpoch > endOfTemporaryAccessByVerifiedUser.millisecondsSinceEpoch;
  }

  bool isWhereNotEmptyWNotVerifiedUserAndLessThanFromDateTime(DateTime dateTime) {
    return isWhereNotEmptyAndNotVerifiedUserParametersUniqueIdByUserAndIsVerifiedUserByVerifiedUser() &&
        isWhereLessThanFromDateTimeParameterEndOfTemporaryAccessByVerifiedUser(dateTime);
  }

  bool isWhereNotEmptyAndTrueParametersUniqueIdByUserAndIsHacked() {
    return uniqueIdByUser.isNotEmpty && isHacked;
  }
}