import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class User extends BaseModel {
  final DateTime creationTime;

  const User(super.uniqueId,this.creationTime) : super();

  @override
  User get getClone => User(uniqueId,creationTime);

  String get getStringWhereIsEmptyParameterUniqueId {
    if(uniqueId.isEmpty) {
      return KeysExceptionUtility.userQGetStringWhereIsEmptyParameterUniqueId;
    }
    return "";
  }
}