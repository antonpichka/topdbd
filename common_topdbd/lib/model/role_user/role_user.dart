import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class RoleUser extends BaseModel {
  final String uniqueIdByUser;
  final bool isAdmin;

  const RoleUser(this.uniqueIdByUser,this.isAdmin) : super(uniqueIdByUser);

  @override
  RoleUser get getClone => RoleUser(uniqueIdByUser,isAdmin);

  @override
  String toString() {
    return "RoleUser(uniqueIdByUser: $uniqueIdByUser, "
        "isAdmin: $isAdmin)";
  }

  List<String> get getListStringWhereRolesEqualTrueParameterIsAdmin {
    final List<String> listString = List.empty(growable: true);
    isAdmin ? listString.add("Admin") : null;
    return listString;
  }
}