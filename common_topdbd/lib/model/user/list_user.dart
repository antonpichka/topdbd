import 'package:common_topdbd/model/user/user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListUser<T extends User> extends BaseListModel<T> {
  const ListUser(super.listModel) : super();

  @override
  ListUser<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListUser<T>(newListModel);
  }
}