import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class RoleUser extends BaseModel {
  final String uniqueIdByUser;
  final bool isAdmin;
  final bool isTest;

  const RoleUser(this.uniqueIdByUser,this.isAdmin,this.isTest) : super(uniqueIdByUser);

  @override
  RoleUser get getClone => RoleUser(uniqueIdByUser,isAdmin,isTest);

  @override
  String toString() {
    return "RoleUser(uniqueIdByUser: $uniqueIdByUser, "
        "isAdmin: $isAdmin, "
        "isTest: $isTest)";
  }

  List<String> get getListStringWhereRolesEqualTrueParametersTwo {
    final List<String> listString = List.empty(growable: true);
    isAdmin ? listString.add("Admin") : null;
    isTest ? listString.add("Test") : null;
    return listString;
  }
}