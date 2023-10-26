import 'package:common_topdbd/model/endgame_w_matches/endgame_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListEndgameWMatches<T extends EndgameWMatches> extends BaseListModel<T> {
  const ListEndgameWMatches(super.listModel) : super();

  @override
  ListEndgameWMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListEndgameWMatches<T>(newListModel);
  }
}