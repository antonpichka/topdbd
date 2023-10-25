import 'package:common_topdbd/model/ban_maps_w_matches/ban_maps_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListBanMapsWMatches<T extends BanMapsWMatches> extends BaseListModel<T> {
  const ListBanMapsWMatches(super.listModel) : super();

  @override
  ListBanMapsWMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListBanMapsWMatches<T>(newListModel);
  }

  void insertFromBanMapsWMatchesParameterListModel(T banMapsWMatches) {
    super.insertFromModelParameterListModel(banMapsWMatches);
  }
}