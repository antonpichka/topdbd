import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class User extends BaseModel {
  final DateTime creationTime;

  const User(super.uniqueId,this.creationTime) : super();

  @override
  User get getCloneModel => User(uniqueId,creationTime);
}