import 'package:common_topdbd/model/maniac_where_match_balance/maniac_where_match_balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListManiacWhereMatchBalance<T extends ManiacWhereMatchBalance> extends BaseListModel<T> {
  const ListManiacWhereMatchBalance(super.listModel);

  @override
  ListManiacWhereMatchBalance<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListManiacWhereMatchBalance<T>(newListModel);
  }

  void deleteToListManiacWhereMatchBalance(String uniqueIdByModel) {
    super.deleteToListModel(uniqueIdByModel);
  }
}