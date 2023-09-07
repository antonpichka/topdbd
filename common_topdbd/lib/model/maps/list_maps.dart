import 'package:common_topdbd/model/maps/maps.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListMaps<T extends Maps> extends BaseListModel<T> {
  const ListMaps(super.listModel) : super();

  @override
  ListMaps<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListMaps<T>(newListModel);
  }
}