import 'package:common_topdbd/model/middlegame_w_matches/middlegame_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListMiddlegameWMatches<T extends MiddlegameWMatches> extends BaseListModel<T> {
  const ListMiddlegameWMatches(super.listModel) : super();

  @override
  ListMiddlegameWMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListMiddlegameWMatches<T>(newListModel);
  }
}