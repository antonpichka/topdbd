import 'package:common_topdbd/model/user/user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class ListUser<T extends User> extends BaseListModel<T> {
  ListUser.success(super.listModel) : super.success();
  ListUser.exception(super.exception) : super.exception();

  @override
  ListUser<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel ?? List.empty(growable: true)) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListUser<T>.success(newListModel);
  }
}