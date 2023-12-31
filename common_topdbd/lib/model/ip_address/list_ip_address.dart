import 'package:common_topdbd/model/ip_address/ip_address.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListIPAddress<T extends IPAddress> extends BaseListModel<T> {
  const ListIPAddress(super.listModel) : super();

  @override
  ListIPAddress<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListIPAddress<T>(newListModel);
  }
}