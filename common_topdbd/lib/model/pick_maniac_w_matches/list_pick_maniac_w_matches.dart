import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches_w_named_w_named_iterator/pick_maniac_w_matches_w_order_by_asc_w_creation_time_iterator.dart';
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

  List<T> getListPickManiacWMatchesWhereEqualsFromUniqueIdByUserParameterListModel(String uniqueIdByUser) {
    final listPickManiacWMatches = ListPickManiacWMatches<T>(List.empty(growable: true));
    for(T itemModel in listModel) {
      if(itemModel.uniqueIdByUser == uniqueIdByUser) {
        listPickManiacWMatches.insertFromPickManiacWMatchesParameterListModel(itemModel.getClone as T);
        continue;
      }
    }
    return listPickManiacWMatches.listModel;
  }

  List<T> getListPickManiacWMatchesWhereNotEqualsFromTwoParameterListModel(String firstUniqueIdByUser,String secondUniqueIdByUser) {
    final listPickManiacWMatches = ListPickManiacWMatches<T>(List.empty(growable: true));
    for(T itemModel in listModel) {
      if(itemModel.uniqueIdByUser != firstUniqueIdByUser &&
          itemModel.uniqueIdByUser != secondUniqueIdByUser)
      {
        listPickManiacWMatches.insertFromPickManiacWMatchesParameterListModel(itemModel.getClone as T);
        continue;
      }
    }
    return listPickManiacWMatches.listModel;
  }

  void sortingWherePickManiacWMatchesWOrderByAscWCreationTimeIterator() {
    sortingFromModelWNamedWNamedIteratorParameterListModel(PickManiacWMatchesWOrderByAscWCreationTimeIterator());
  }

  void insertFromPickManiacWMatchesParameterListModel(T pickManiacWMatches) {
    insertFromNewModelParameterListModel(pickManiacWMatches);
  }

  void updateFromPickManiacWMatchesParameterListModel(T pickManiacWMatches) {
    updateFromNewModelParameterListModel(pickManiacWMatches);
  }
}