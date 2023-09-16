import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListManiacPerk<T extends ManiacPerk> extends BaseListModel<T> {
  const ListManiacPerk(super.listModel) : super();

  @override
  ListManiacPerk<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListManiacPerk<T>(newListModel);
  }

  void insertToListManiacPerk(T model) {
    super.insertToListModel(model);
  }

  void insertListToListManiacPerk(List<T> list) {
    super.insertListToListModel(list);
  }

  void deleteToListManiacPerk(String uniqueIdByModel) {
    super.deleteToListModel(uniqueIdByModel);
  }
}