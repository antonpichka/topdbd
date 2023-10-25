import 'package:common_topdbd/model/round_where_matches/round_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListRoundWMatches<T extends RoundWMatches> extends BaseListModel<T> {
  const ListRoundWMatches(super.listModel);

  @override
  ListRoundWMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListRoundWMatches<T>(newListModel);
  }

  void insertFromRoundWMatchesParameterListModel(T roundWMatches) {
    super.insertFromModelParameterListModel(roundWMatches);
  }

  void updateFromRoundWMatchesParameterListModel(T roundWMatches) {
    super.updateFromModelParameterListModel(roundWMatches);
  }
}