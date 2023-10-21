import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/list_maniac_where_match_balance.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/maniac_where_match_balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListManiac<T extends Maniac> extends BaseListModel<T> {
  const ListManiac(super.listModel) : super();

  @override
  ListManiac<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListManiac<T>(newListModel);
  }

  void insertFromListManiacWhereMatchBalanceParameterListModel(ListManiacWhereMatchBalance listManiacWhereMatchBalance) {
    final listManiac = List<T>.empty(growable: true);
    for(ManiacWhereMatchBalance maniacWhereMatchBalance in listManiacWhereMatchBalance.listModel) {
      listManiac.add(maniacWhereMatchBalance.maniac as T);
    }
    super.insertFromNewListModelParameterListModel(listManiac);
  }

  void deleteFromUniqueIdByManiacParameterListModel(String uniqueIdByManiac) {
    super.deleteFromUniqueIdByModelParameterListModel(uniqueIdByManiac);
  }
}