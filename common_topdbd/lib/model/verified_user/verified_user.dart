import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class VerifiedUser extends BaseModel {
  final String? uniqueIdByUser;
  final bool? isVerifiedUser;

  VerifiedUser.success(this.uniqueIdByUser,this.isVerifiedUser) : super.success(uniqueIdByUser);
  VerifiedUser.exception(super.exception) :
        uniqueIdByUser = null,
        isVerifiedUser = null,
        super.exception();

  @override
  VerifiedUser get getCloneModel => VerifiedUser.success(uniqueIdByUser,isVerifiedUser);
}