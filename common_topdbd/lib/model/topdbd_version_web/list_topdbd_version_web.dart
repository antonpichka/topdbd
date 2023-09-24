import 'package:common_topdbd/model/topdbd_version_web/topdbd_version_web.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListTOPDBDVersionWeb<T extends TOPDBDVersionWeb> extends BaseListModel<T> {
  const ListTOPDBDVersionWeb(super.listModel) : super();

  @override
  ListTOPDBDVersionWeb<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListTOPDBDVersionWeb<T>(newListModel);
  }
}