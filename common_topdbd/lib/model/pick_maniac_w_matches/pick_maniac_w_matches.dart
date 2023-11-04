import 'package:common_topdbd/model/ban_maps_w_matches/list_ban_maps_w_matches.dart';
import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:common_topdbd/model/pick_maniac_perk_w_matches/list_pick_maniac_perk_w_matches.dart';
import 'package:common_topdbd/model/pick_maps_w_matches/pick_maps_w_matches.dart';
import 'package:common_topdbd/model/pick_survivor_perk_w_matches/list_pick_survivor_perk_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickManiacWMatches extends BaseModel {
  final Maniac maniac;
  final String uniqueIdByUser;
  final DateTime creationTime;
  final ListBanMapsWMatches listBanMapsWMatches;
  final PickMapsWMatches pickMapsWMatches;
  final ListPickManiacPerkWMatches listPickManiacPerkWMatches;
  final ListPickSurvivorPerkWMatches listPickSurvivorPerkWMatches;

  PickManiacWMatches(this.maniac,this.uniqueIdByUser,this.creationTime,this.listBanMapsWMatches, this.pickMapsWMatches,this.listPickManiacPerkWMatches,this.listPickSurvivorPerkWMatches) : super(maniac.uniqueId);

  @override
  PickManiacWMatches get getClone => PickManiacWMatches(maniac.getClone,uniqueIdByUser,creationTime,listBanMapsWMatches.getClone,pickMapsWMatches.getClone,listPickManiacPerkWMatches.getClone,listPickSurvivorPerkWMatches.getClone);

  @override
  String toString() {
    return "PickManiacWMatches(maniac: $maniac, "
        "uniqueIdByUser: $uniqueIdByUser, "
        "creationTime: $creationTime, "
        "listBanMapsWMatches: ${listBanMapsWMatches.listModel}, "
        "pickMapsWMatches: $pickMapsWMatches, "
        "listPickManiacPerkWMatches: ${listPickManiacPerkWMatches.listModel}, "
        "listPickSurvivorPerkWMatches: ${listPickSurvivorPerkWMatches.listModel})";
  }
}