import 'package:common_topdbd/model/pick_maps_w_matches/pick_maps_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListPickMapsWMatches<T extends PickMapsWMatches> extends BaseListModel<T> {
  const ListPickMapsWMatches(super.listModel) : super();

  @override
  ListPickMapsWMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListPickMapsWMatches<T>(newListModel);
  }
}