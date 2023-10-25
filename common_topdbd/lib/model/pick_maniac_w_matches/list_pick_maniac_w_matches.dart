import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches_where_named_parameter_named_iterator/pick_maniac_w_matches_where_order_by_asc_parameter_creation_time_iterator.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListPickManiacWMatches<T extends PickManiacWMatches> extends BaseListModel<T> {
  const ListPickManiacWMatches(super.listModel) : super();

  @override
  ListPickManiacWMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListPickManiacWMatches<T>(newListModel);
  }

  void pickManiacWMatchesWhereOrderByAscParameterCreationTimeIterator() {
    sortingFromModelWhereNamedParameterNamedIteratorParameterListModel(PickManiacWMatchesWhereOrderByAscParameterCreationTimeIterator());
  }

  void insertFromPickManiacWMatchesParameterListModel(T pickManiacWMatches) {
    insertFromModelParameterListModel(pickManiacWMatches);
  }

  void updateFromPickManiacWMatchesParameterListModel(T pickManiacWMatches) {
    updateFromModelParameterListModel(pickManiacWMatches);
  }

  void insertFromListPickManiacWMatchesParameterListModel(List<T> listPickManiacWMatches) {
    insertFromNewListModelParameterListModel(listPickManiacWMatches);
  }
}