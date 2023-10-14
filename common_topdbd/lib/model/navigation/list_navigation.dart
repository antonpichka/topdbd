import 'package:common_topdbd/model/navigation/navigation.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListNavigation<T extends Navigation> extends BaseListModel<T> {
  const ListNavigation(super.listModel) : super();

  @override
  ListNavigation<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListNavigation<T>(newListModel);
  }
}