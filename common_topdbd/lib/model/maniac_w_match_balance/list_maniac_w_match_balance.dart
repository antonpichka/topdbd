import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListManiacWMatchBalance<T extends ManiacWMatchBalance> extends BaseListModel<T> {
  const ListManiacWMatchBalance(super.listModel);

  @override
  ListManiacWMatchBalance<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListManiacWMatchBalance<T>(newListModel);
  }

  void deleteFromUniqueIdByManiacWMatchBalanceParameterListModel(String uniqueIdByManiacWMatchBalance) {
    super.deleteFromUniqueIdByModelParameterListModel(uniqueIdByManiacWMatchBalance);
  }
}