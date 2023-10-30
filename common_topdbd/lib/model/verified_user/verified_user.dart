import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class VerifiedUser extends BaseModel {
  final String uniqueIdByUser;
  final bool isVerifiedUser;

  const VerifiedUser(this.uniqueIdByUser,this.isVerifiedUser) : super(uniqueIdByUser);

  @override
  VerifiedUser get getClone => VerifiedUser(uniqueIdByUser,isVerifiedUser);

  @override
  String toString() {
    return "VerifiedUser(uniqueIdByUser: $uniqueIdByUser, "
        "isVerifiedUser: $isVerifiedUser)";
  }

  String get getExceptionInStringWhereUsingIsWNotVerifiedUserWIsVerifiedUser {
    if(isWhereNotVerifiedUserParameterIsVerifiedUser()) {
      return KeysExceptionUtility.verifiedUserQQGetExceptionInStringWhereUsingIsWNotVerifiedUserWIsVerifiedUser;
    }
    return "";
  }

  bool isWhereNotVerifiedUserParameterIsVerifiedUser() {
    return !isVerifiedUser;
  }
}