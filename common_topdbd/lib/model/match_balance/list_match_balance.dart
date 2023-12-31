import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListMatchBalance<T extends MatchBalance> extends BaseListModel<T> {
  const ListMatchBalance(super.listModel);

  @override
  ListMatchBalance<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListMatchBalance<T>(newListModel);
  }
}