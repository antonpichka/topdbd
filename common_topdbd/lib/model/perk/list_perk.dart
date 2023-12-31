import 'package:common_topdbd/model/perk/perk.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListPerk<T extends Perk> extends BaseListModel<T> {
  const ListPerk(super.listModel) : super();

  @override
  ListPerk<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListPerk<T>(newListModel);
  }
}