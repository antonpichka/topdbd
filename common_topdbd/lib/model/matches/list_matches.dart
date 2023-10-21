import 'package:common_topdbd/model/matches/matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListMatches<T extends Matches> extends BaseListModel<T> {
  const ListMatches(super.listModel);

  @override
  ListMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListMatches<T>(newListModel);
  }
}