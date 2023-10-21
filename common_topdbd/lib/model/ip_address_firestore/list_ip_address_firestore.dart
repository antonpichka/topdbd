import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListIPAddressFirestore<T extends IPAddressFirestore> extends BaseListModel<T> {
  const ListIPAddressFirestore(super.listModel) : super();

  @override
  ListIPAddressFirestore<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListIPAddressFirestore<T>(newListModel);
  }
}