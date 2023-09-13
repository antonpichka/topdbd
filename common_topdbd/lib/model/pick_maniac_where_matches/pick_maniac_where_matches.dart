import 'package:common_topdbd/model/ban_maps_where_matches/list_ban_maps_where_matches.dart';
import 'package:common_topdbd/model/pick_maniac_perk_where_matches/list_pick_maniac_perk_where_matches.dart';
import 'package:common_topdbd/model/pick_maps_where_matches/pick_maps_where_matches.dart';
import 'package:common_topdbd/model/pick_survivor_perk_where_matches/list_pick_survivor_perk_where_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickManiacWhereMatches extends BaseModel {
  final String name;
  final String uniqueIdByUser;
  final DateTime creationTime;
  final ListBanMapsWhereMatches listBanMapsWhereMatches;
  final PickMapsWhereMatches pickMapsWhereMatches;
  final ListPickManiacPerkWhereMatches listPickManiacPerkWhereMatches;
  final ListPickSurvivorPerkWhereMatches listPickSurvivorPerkWhereMatches;
  /*final bool isRoundWin;
  final int elapsedSecondsPerRounds;*/

  const PickManiacWhereMatches(this.name,this.uniqueIdByUser,this.creationTime,this.listBanMapsWhereMatches, this.pickMapsWhereMatches,this.listPickManiacPerkWhereMatches,this.listPickSurvivorPerkWhereMatches) : super(name);

  @override
  PickManiacWhereMatches get getCloneModel => PickManiacWhereMatches(name,uniqueIdByUser,creationTime,listBanMapsWhereMatches.getCloneListModel,pickMapsWhereMatches.getCloneModel,listPickManiacPerkWhereMatches.getCloneListModel,listPickSurvivorPerkWhereMatches.getCloneListModel);

  @override
  String toString() {
    return "$name (CreationTime: ${creationTime.toString()}) (Maps: ${pickMapsWhereMatches.name}) (ListManiacPerk: ${listPickManiacPerkWhereMatches.listModel}) (ListSurvivorPerk: ${listPickSurvivorPerkWhereMatches.listModel})\n";
  }
}