import 'package:common_topdbd/model/role_user/role_user.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

base class ListRoleUser<T extends RoleUser> extends BaseListModel<T> {
  ListRoleUser.success(super.listModel) : super.success();
  ListRoleUser.exception(super.exception) : super.exception();

  @override
  ListRoleUser<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel ?? List.empty(growable: true)) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListRoleUser<T>.success(newListModel);
  }
}