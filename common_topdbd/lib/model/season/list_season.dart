import 'package:common_topdbd/model/season/season.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

base class ListSeason<T extends Season> extends BaseListModel<T> {
  ListSeason.success(super.listModel) : super.success();
  ListSeason.exception(super.exception) : super.exception();

  @override
  ListSeason<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel ?? List.empty(growable: true)) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListSeason<T>.success(newListModel);
  }
}