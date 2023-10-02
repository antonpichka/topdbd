import 'package:common_topdbd/model/country_tc/country_tc.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListCountryTC<T extends CountryTC> extends BaseListModel<T> {
  const ListCountryTC(super.listModel) : super();

  @override
  ListCountryTC<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListCountryTC<T>(newListModel);
  }
}