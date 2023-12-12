import 'package:common_topdbd/model/role_user/role_user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListRoleUser<T extends RoleUser> extends BaseListModel<T> {
  const ListRoleUser(super.listModel) : super();

  @override
  ListRoleUser<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListRoleUser<T>(newListModel);
  }

  List<String> get getListStringWhereAdditionUniqueIdByUserParameterListModel {
    final List<String> listString = List.empty(growable: true);
    for(T itemModel in listModel) {
      listString.add(itemModel.uniqueIdByUser);
    }
    return listString;
  }
  
  void deleteWhereIsTestEqualsTrueParameterListModel() {
    final clone = getClone;
    for(int i = 0; i < clone.listModel.length; i++) {
      final itemModel = clone.listModel[i];
      if(!itemModel.isTest) {
        continue;
      }
      listModel.removeAt(i);
    }
  }
}