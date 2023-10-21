import 'package:common_topdbd/model/pick_maniac_where_matches/pick_maniac_where_matches.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/pick_maniac_where_matches_named_iterator/pick_maniac_where_matches_where_order_by_asc_parameter_creation_time_iterator.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListPickManiacWhereMatches<T extends PickManiacWhereMatches> extends BaseListModel<T> {
  const ListPickManiacWhereMatches(super.listModel) : super();

  @override
  ListPickManiacWhereMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListPickManiacWhereMatches<T>(newListModel);
  }

  void pickManiacWhereMatchesWhereOrderByAscParameterCreationTimeIteratorParameterListModel() {
    sortingFromModelWhereNamedParameterNamedIteratorParameterListModel(PickManiacWhereMatchesWhereOrderByAscParameterCreationTimeIterator());
  }

  void insertFromPickManiacWhereMatchesParameterListModel(T pickManiacWhereMatches) {
    insertFromModelParameterListModel(pickManiacWhereMatches);
  }

  void updateFromPickManiacWhereMatchesParameterListModel(T pickManiacWhereMatches) {
    updateFromModelParameterListModel(pickManiacWhereMatches);
  }

  void insertFromListPickManiacWhereMatchesParameterListModel(List<T> listPickManiacWhereMatches) {
    insertFromNewListModelParameterListModel(listPickManiacWhereMatches);
  }
}