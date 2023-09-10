import 'package:common_topdbd/model/ban_maps_where_matches/list_ban_maps_where_matches.dart';
import 'package:common_topdbd/model/pick_maniac_perk_where_matches/list_pick_maniac_perk_where_matches.dart';
import 'package:common_topdbd/model/pick_maps_where_matches/pick_maps_where_matches.dart';
import 'package:common_topdbd/model/pick_survivor_perk_where_matches/list_pick_survivor_perk_where_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickManiacWhereMatches extends BaseModel {
  final String name;
  final ListBanMapsWhereMatches listBanMapsWhereMatches;
  final PickMapsWhereMatches pickMapsWhereMatches;
  final ListPickManiacPerkWhereMatches listPickManiacPerkWhereMatches;
  final ListPickSurvivorPerkWhereMatches listPickSurvivorPerkWhereMatches;
  final bool isRoundWin;
  final int elapsedSecondsPerRounds;

  const PickManiacWhereMatches(this.name, this.listBanMapsWhereMatches, this.pickMapsWhereMatches,this.listPickManiacPerkWhereMatches,this.listPickSurvivorPerkWhereMatches, this.isRoundWin,this.elapsedSecondsPerRounds) : super(name);

  @override
  PickManiacWhereMatches get getCloneModel => PickManiacWhereMatches(name,listBanMapsWhereMatches.getCloneListModel,pickMapsWhereMatches.getCloneModel,listPickManiacPerkWhereMatches.getCloneListModel,listPickSurvivorPerkWhereMatches.getCloneListModel,isRoundWin,elapsedSecondsPerRounds);
}