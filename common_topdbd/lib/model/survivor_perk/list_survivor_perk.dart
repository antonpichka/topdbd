import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListSurvivorPerk<T extends SurvivorPerk> extends BaseListModel<T> {
  const ListSurvivorPerk(super.listModel) : super();

  @override
  ListSurvivorPerk<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListSurvivorPerk<T>(newListModel);
  }
}