import 'package:common_topdbd/model/country/country.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class ListCountry<T extends Country> extends BaseListModel<T> {
  ListCountry.success(super.listModel) : super.success();
  ListCountry.exception(super.exception) : super.exception();

  @override
  ListCountry<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel ?? List.empty(growable: true)) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListCountry<T>.success(newListModel);
  }
}