import 'package:common_topdbd/model/dates_times/dates_times.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

base class ListDatesTimes<T extends DatesTimes> extends BaseListModel<T> {
  ListDatesTimes.success(super.listModel) : super.success();
  ListDatesTimes.exception(super.exception) : super.exception();

  @override
  ListDatesTimes<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel ?? List.empty(growable: true)) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListDatesTimes<T>.success(newListModel);
  }
}