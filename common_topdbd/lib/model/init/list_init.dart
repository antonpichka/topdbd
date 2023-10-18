import 'package:common_topdbd/model/init/init.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListInit<T extends Init> extends BaseListModel<T> {
  const ListInit(super.listModel) : super();

  @override
  ListInit<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListInit<T>(newListModel);
  }
}