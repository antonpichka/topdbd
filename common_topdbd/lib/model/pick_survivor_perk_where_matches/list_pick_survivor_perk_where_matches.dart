import 'package:common_topdbd/model/pick_survivor_perk_where_matches/pick_survivor_perk_where_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListPickSurvivorPerkWhereMatches<T extends PickSurvivorPerkWhereMatches> extends BaseListModel<T> {
  const ListPickSurvivorPerkWhereMatches(super.listModel) : super();

  @override
  ListPickSurvivorPerkWhereMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListPickSurvivorPerkWhereMatches<T>(newListModel);
  }

  List<T> getListPickSurvivorPerkWhereMatchesFromUniqueIdByUserParameterListModel(String uniqueIdByUser) {
    final listPickSurvivorPerkWhereMatches = List<T>.empty(growable: true);
    for(T pickSurvivorPerkWhereMatches in listModel) {
      if(pickSurvivorPerkWhereMatches.uniqueIdByUser != uniqueIdByUser) {
        continue;
      }
      listPickSurvivorPerkWhereMatches.add(pickSurvivorPerkWhereMatches.getClone as T);
    }
    return listPickSurvivorPerkWhereMatches;
  }

  void insertFromPickSurvivorPerkWhereMatchesParameterListModel(T pickSurvivorPerkWhereMatches) {
    super.insertFromModelParameterListModel(pickSurvivorPerkWhereMatches);
  }
}