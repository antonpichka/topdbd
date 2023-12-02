import 'package:common_topdbd/model/uibu_w_ubdu/uibu_w_ubdu.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListUIBUWUBDU<T extends UIBUWUBDU> extends BaseListModel<T> {
  const ListUIBUWUBDU(super.listModel) : super();

  @override
  ListUIBUWUBDU<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListUIBUWUBDU<T>(newListModel);
  }
}