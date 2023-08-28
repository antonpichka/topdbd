import 'package:common_topdbd/model/ip_address/ip_address.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

base class ListIPAddress<T extends IPAddress> extends BaseListModel<T> {
  ListIPAddress.success(super.listModel) : super.success();
  ListIPAddress.exception(super.exception) : super.exception();

  @override
  ListIPAddress<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel ?? List.empty(growable: true)) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListIPAddress<T>.success(newListModel);
  }
}