import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

base class ListIPAddressFirestore<T extends IPAddressFirestore> extends BaseListModel<T> {
  ListIPAddressFirestore.success(super.listModel) : super.success();
  ListIPAddressFirestore.exception(super.exception) : super.exception();

  @override
  ListIPAddressFirestore<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel ?? List.empty(growable: true)) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListIPAddressFirestore<T>.success(newListModel);
  }
}