import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class VerifiedUserSP extends BaseModel {
  final bool isVerifiedUser;

  const VerifiedUserSP(this.isVerifiedUser) : super("$isVerifiedUser");

  @override
  VerifiedUserSP get getCloneModel => VerifiedUserSP(isVerifiedUser);
}