import 'package:common_topdbd/model/pick_maniac_perk_w_matches/pick_maniac_perk_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListPickManiacPerkWMatches<T extends PickManiacPerkWMatches> extends BaseListModel<T> {
  const ListPickManiacPerkWMatches(super.listModel) : super();

  @override
  ListPickManiacPerkWMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListPickManiacPerkWMatches<T>(newListModel);
  }

  List<T> getListPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel(String uniqueIdByUser) {
    final listPickManiacPerkWMatches = List<T>.empty(growable: true);
    for(T itemModel in listModel) {
      if(itemModel.uniqueIdByUser != uniqueIdByUser) {
        continue;
      }
      listPickManiacPerkWMatches.add(itemModel.getClone as T);
    }
    return listPickManiacPerkWMatches;
  }

  String getStringWhereNameWListPickManiacPerkWMatchesFromUniqueIdByUser(String uniqueIdByUser) {
    final listPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel = getListPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser);
    String name = "";
    for(T itemPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel in listPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel) {
      if(name.isEmpty) {
        name = itemPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel.name;
        continue;
      }
      name += " ,${itemPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel.name}";
    }
    return name;
  }

  void insertFromPickManiacPerkWMatchesParameterListModel(T pickManiacPerkWMatches) {
    super.insertFromNewModelParameterListModel(pickManiacPerkWMatches);
  }
}