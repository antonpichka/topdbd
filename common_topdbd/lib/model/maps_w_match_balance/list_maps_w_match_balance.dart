import 'package:common_topdbd/model/maps_w_match_balance/maps_w_match_balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListMapsWMatchBalance<T extends MapsWMatchBalance> extends BaseListModel<T> {
  const ListMapsWMatchBalance(super.listModel);

  @override
  ListMapsWMatchBalance<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListMapsWMatchBalance<T>(newListModel);
  }

  void insertListFromListStrings(ListStrings listStrings) {
    for(Strings itemModel in listStrings.listModel) {
      super.insertFromNewModelParameterListModel(MapsWMatchBalance(itemModel.uniqueId) as T);
    }
  }
}