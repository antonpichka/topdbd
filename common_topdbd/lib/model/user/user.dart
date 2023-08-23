import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class User extends BaseModel {
  User.success(super.uniqueId) : super.success();
  User.exception(super.exception) : super.exception();

  @override
  User get getCloneModel => User.success(uniqueId);
}