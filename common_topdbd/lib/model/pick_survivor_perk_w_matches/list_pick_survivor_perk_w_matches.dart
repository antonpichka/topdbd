import 'package:common_topdbd/model/pick_survivor_perk_w_matches/pick_survivor_perk_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListPickSurvivorPerkWMatches<T extends PickSurvivorPerkWMatches> extends BaseListModel<T> {
  const ListPickSurvivorPerkWMatches(super.listModel) : super();

  @override
  ListPickSurvivorPerkWMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListPickSurvivorPerkWMatches<T>(newListModel);
  }

  List<T> getListPickSurvivorPerkWMatchesFromUniqueIdByUserParameterListModel(String uniqueIdByUser) {
    final listPickSurvivorPerkWMatches = List<T>.empty(growable: true);
    for(T itemModel in listModel) {
      if(itemModel.uniqueIdByUser != uniqueIdByUser) {
        continue;
      }
      listPickSurvivorPerkWMatches.add(itemModel.getClone as T);
    }
    return listPickSurvivorPerkWMatches;
  }

  void insertFromPickSurvivorPerkWMatchesParameterListModel(T pickSurvivorPerkWMatches) {
    super.insertFromModelParameterListModel(pickSurvivorPerkWMatches);
  }
}