import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class RoleUser extends BaseModel {
  final String? uniqueIdByUser;
  final bool? isAdmin;
  final bool? isTest;

  RoleUser.success(this.uniqueIdByUser,this.isAdmin,this.isTest) : super.success(uniqueIdByUser);
  RoleUser.exception(super.exception) :
        uniqueIdByUser = null,
        isAdmin = null,
        isTest = null,
        super.exception();

  @override
  RoleUser get getCloneModel => RoleUser.success(uniqueIdByUser,isAdmin,isTest);
}