import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class VerifiedUser extends BaseModel {
  final String uniqueIdByUser;
  final bool isVerifiedUser;
  final DateTime startOfTemporaryAccess;
  final DateTime endOfTemporaryAccess;

  const VerifiedUser(this.uniqueIdByUser,this.isVerifiedUser,this.startOfTemporaryAccess,this.endOfTemporaryAccess) : super(uniqueIdByUser);

  @override
  VerifiedUser get getClone => VerifiedUser(uniqueIdByUser,isVerifiedUser,startOfTemporaryAccess,endOfTemporaryAccess);

  @override
  String toString() {
    return "VerifiedUser(uniqueIdByUser: $uniqueIdByUser, "
        "isVerifiedUser: $isVerifiedUser, "
        "startOfTemporaryAccess: $startOfTemporaryAccess, "
        "endOfTemporaryAccess: $endOfTemporaryAccess)";
  }
}