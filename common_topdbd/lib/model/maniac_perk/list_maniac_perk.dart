import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListManiacPerk<T extends ManiacPerk> extends BaseListModel<T> {
  const ListManiacPerk(super.listModel) : super();

  @override
  ListManiacPerk<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListManiacPerk<T>(newListModel);
  }

  void insertFromManiacPerkParameterListModel(T maniacPerk) {
    super.insertFromModelParameterListModel(maniacPerk);
  }

  void insertFromListManiacPerkParameterListModel(List<T> listManiacPerk) {
    super.insertFromNewListModelParameterListModel(listManiacPerk);
  }

  void deleteFromUniqueIdByManiacPerkParameterListModel(String uniqueIdByManiacPerk) {
    super.deleteFromUniqueIdByModelParameterListModel(uniqueIdByManiacPerk);
  }
}