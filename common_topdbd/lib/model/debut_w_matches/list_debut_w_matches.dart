import 'package:common_topdbd/model/debut_w_matches/debut_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListDebutWMatches<T extends DebutWMatches> extends BaseListModel<T> {
  const ListDebutWMatches(super.listModel) : super();

  @override
  ListDebutWMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListDebutWMatches<T>(newListModel);
  }
}