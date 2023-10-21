import 'package:common_topdbd/model/pick_maniac_perk_where_matches/pick_maniac_perk_where_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListPickManiacPerkWhereMatches<T extends PickManiacPerkWhereMatches> extends BaseListModel<T> {
  const ListPickManiacPerkWhereMatches(super.listModel) : super();

  @override
  ListPickManiacPerkWhereMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListPickManiacPerkWhereMatches<T>(newListModel);
  }

  List<T> getListPickManiacPerkWhereMatchesFromUniqueIdByUserParameterListModel(String uniqueIdByUser) {
    final listPickManiacPerkWhereMatches = List<T>.empty(growable: true);
    for(T pickManiacPerkWhereMatches in listModel) {
      if(pickManiacPerkWhereMatches.uniqueIdByUser != uniqueIdByUser) {
        continue;
      }
      listPickManiacPerkWhereMatches.add(pickManiacPerkWhereMatches.getClone as T);
    }
    return listPickManiacPerkWhereMatches;
  }

  void insertFromPickManiacPerkWhereMatchesParameterListModel(T model) {
    super.insertFromModelParameterListModel(model);
  }
}