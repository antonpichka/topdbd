import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class User extends BaseModel {
  final DateTime? creationTime;

  User.success(super.uniqueId,this.creationTime) : super.success();
  User.exception(super.exception) :
        creationTime = null,
        super.exception();

  @override
  User get getCloneModel => User.success(uniqueId,creationTime);
}