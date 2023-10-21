import 'package:common_topdbd/model/pick_maps_where_matches/pick_maps_where_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListPickMapsWhereMatches<T extends PickMapsWhereMatches> extends BaseListModel<T> {
  const ListPickMapsWhereMatches(super.listModel) : super();

  @override
  ListPickMapsWhereMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListPickMapsWhereMatches<T>(newListModel);
  }
}