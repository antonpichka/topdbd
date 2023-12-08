import 'package:common_topdbd/model/maniac_perk_w_match_balance/maniac_perk_w_match_balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListManiacPerkWMatchBalance<T extends ManiacPerkWMatchBalance> extends BaseListModel<T> {
  const ListManiacPerkWMatchBalance(super.listModel);

  @override
  ListManiacPerkWMatchBalance<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListManiacPerkWMatchBalance<T>(newListModel);
  }
}