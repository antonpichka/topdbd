import 'package:common_topdbd/model/survivor_perk_w_match_balance/survivor_perk_w_match_balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListSurvivorPerkWMatchBalance<T extends SurvivorPerkWMatchBalance> extends BaseListModel<T> {
  const ListSurvivorPerkWMatchBalance(super.listModel);

  @override
  ListSurvivorPerkWMatchBalance<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListSurvivorPerkWMatchBalance<T>(newListModel);
  }

  void deleteFromUniqueIdBySurvivorPerkWMatchBalanceParameterListModel(String uniqueIdBySurvivorPerkWMatchBalance) {
    super.deleteFromUniqueIdByModelParameterListModel(uniqueIdBySurvivorPerkWMatchBalance);
  }
}