import 'package:common_topdbd/model/role_user/role_user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListRoleUser<T extends RoleUser> extends BaseListModel<T> {
  const ListRoleUser(super.listModel) : super();

  @override
  ListRoleUser<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListRoleUser<T>(newListModel);
  }
}