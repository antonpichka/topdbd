import 'package:common_topdbd/model/top_players/top_players.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListTopPlayers<T extends TopPlayers> extends BaseListModel<T> {
  const ListTopPlayers(super.listModel) : super();

  @override
  ListTopPlayers<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListTopPlayers<T>(newListModel);
  }
}