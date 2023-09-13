import 'package:common_topdbd/model/pick_survivor_perk_where_matches/pick_survivor_perk_where_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListPickSurvivorPerkWhereMatches<T extends PickSurvivorPerkWhereMatches> extends BaseListModel<T> {
  const ListPickSurvivorPerkWhereMatches(super.listModel) : super();

  @override
  ListPickSurvivorPerkWhereMatches<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListPickSurvivorPerkWhereMatches<T>(newListModel);
  }

  void insertToListPickSurvivorPerkWhereMatches(T model) {
    super.insertToListModel(model);
  }
}