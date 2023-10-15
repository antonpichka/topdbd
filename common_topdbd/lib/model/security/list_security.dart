import 'package:common_topdbd/model/security/security.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListSecurity<T extends Security> extends BaseListModel<T> {
  const ListSecurity(super.listModel) : super();

  @override
  ListSecurity<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListSecurity<T>(newListModel);
  }
}