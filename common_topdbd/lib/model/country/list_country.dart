import 'package:common_topdbd/model/country/country.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListCountry<T extends Country> extends BaseListModel<T> {
  const ListCountry(super.listModel) : super();

  @override
  ListCountry<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListCountry<T>(newListModel);
  }
}