import 'package:common_topdbd/model/country_rd/country_rd.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListCountryRD<T extends CountryRD> extends BaseListModel<T> {
  const ListCountryRD(super.listModel) : super();

  @override
  ListCountryRD<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListCountryRD<T>(newListModel);
  }
}