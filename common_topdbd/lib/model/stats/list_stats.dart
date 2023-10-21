import 'package:common_topdbd/model/stats/stats.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListStats<T extends Stats> extends BaseListModel<T> {
  const ListStats(super.listModel) : super();

  @override
  ListStats<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListStats<T>(newListModel);
  }
}