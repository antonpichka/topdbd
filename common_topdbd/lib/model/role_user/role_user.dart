import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class RoleUser extends BaseModel {
  final String uniqueIdByUser;
  final bool isAdmin;
  final bool isTest;

  const RoleUser(this.uniqueIdByUser,this.isAdmin,this.isTest) : super(uniqueIdByUser);

  @override
  RoleUser get getCloneModel => RoleUser(uniqueIdByUser,isAdmin,isTest);
}