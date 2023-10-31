import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListSurvivorPerk<T extends SurvivorPerk> extends BaseListModel<T> {
  const ListSurvivorPerk(super.listModel) : super();

  @override
  ListSurvivorPerk<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListSurvivorPerk<T>(newListModel);
  }

  void insertFromSurvivorPerkParameterListModel(T survivorPerk) {
    super.insertFromNewModelParameterListModel(survivorPerk);
  }

  void insertFromListSurvivorPerkParameterListModel(List<T> listSurvivorPerk) {
    super.insertFromNewListModelParameterListModel(listSurvivorPerk);
  }

  void deleteFromUniqueIdBySurvivorPerkParameterListModel(String uniqueIdBySurvivorPerk) {
    super.deleteFromUniqueIdByModelParameterListModel(uniqueIdBySurvivorPerk);
  }
}