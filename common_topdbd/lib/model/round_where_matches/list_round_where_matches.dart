import 'package:common_topdbd/model/round_where_matches/round_where_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListRoundWhereMatches<T extends RoundWhereMatches> extends BaseListModel<T> {
  const ListRoundWhereMatches(super.listModel);

  @override
  ListRoundWhereMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListRoundWhereMatches<T>(newListModel);
  }

  void insertFromRoundWhereMatchesParameterListModel(T roundWhereMatches) {
    super.insertFromModelParameterListModel(roundWhereMatches);
  }

  void updateFromRoundWhereMatchesParameterListModel(T roundWhereMatches) {
    super.updateFromModelParameterListModel(roundWhereMatches);
  }
}