import 'package:common_topdbd/model/stats/stats.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class ListStats<T extends Stats> extends BaseListModel<T> {
  ListStats.success(super.listModel) : super.success();
  ListStats.exception(super.exception) : super.exception();

  @override
  ListStats<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel ?? List.empty(growable: true)) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListStats<T>.success(newListModel);
  }
}