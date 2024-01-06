import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class VerifiedUser extends BaseModel {
  final String uniqueIdByUser;
  final bool isVerifiedUser;
  final DateTime endOfTemporaryAccess;

  const VerifiedUser(this.uniqueIdByUser,this.isVerifiedUser,this.endOfTemporaryAccess) : super(uniqueIdByUser);

  @override
  VerifiedUser get getClone => VerifiedUser(uniqueIdByUser,isVerifiedUser,endOfTemporaryAccess);

  @override
  String toString() {
    return "VerifiedUser(uniqueIdByUser: $uniqueIdByUser, "
        "isVerifiedUser: $isVerifiedUser, "
        "endOfTemporaryAccess: $endOfTemporaryAccess)";
  }
}