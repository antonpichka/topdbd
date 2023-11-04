import 'package:common_topdbd/model/maps/maps.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListMaps<T extends Maps> extends BaseListModel<T> {
  const ListMaps(super.listModel) : super();

  @override
  ListMaps<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListMaps<T>(newListModel);
  }

  void insertFromMapsParameterListModel(T maps) {
    super.insertFromNewModelParameterListModel(maps);
  }

  void deleteFromUniqueIdByMapsParameterListModel(String uniqueIdByMaps) {
    super.deleteFromUniqueIdByModelParameterListModel(uniqueIdByMaps);
  }
}