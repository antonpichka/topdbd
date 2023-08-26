import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class VerifiedUserSP extends BaseModel {
  final bool? isVerifiedUser;

  VerifiedUserSP.success(this.isVerifiedUser) : super.success(isVerifiedUser.toString());
  VerifiedUserSP.exception(super.exception) :
        isVerifiedUser = null,
        super.exception();

  @override
  VerifiedUserSP get getCloneModel => VerifiedUserSP.success(isVerifiedUser);
}