import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class LastLoginTimeUser extends BaseModel {
  final String uniqueIdByUser;
  final DateTime lastLoginTime;

  const LastLoginTimeUser(this.uniqueIdByUser,this.lastLoginTime) : super(uniqueIdByUser);

  @override
  LastLoginTimeUser get getClone => LastLoginTimeUser(uniqueIdByUser,lastLoginTime);

  @override
  String toString() {
    return "LastLoginTimeUser(uniqueIdByUser: $uniqueIdByUser, "
        "lastLoginTime: $lastLoginTime)";
  }
}