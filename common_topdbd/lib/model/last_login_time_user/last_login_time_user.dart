import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class LastLoginTimeUser extends BaseModel {
  final String? uniqueIdByUser;
  final DateTime? lastLoginTime;

  LastLoginTimeUser.success(this.uniqueIdByUser,this.lastLoginTime) : super.success(uniqueIdByUser);
  LastLoginTimeUser.exception(super.exception) :
        uniqueIdByUser = null,
        lastLoginTime = null,
        super.exception();

  @override
  LastLoginTimeUser get getCloneModel => LastLoginTimeUser.success(uniqueIdByUser,lastLoginTime);
}