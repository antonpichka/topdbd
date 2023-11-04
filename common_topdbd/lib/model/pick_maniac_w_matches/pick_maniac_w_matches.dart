import 'package:common_topdbd/model/ban_maps_w_matches/list_ban_maps_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_perk_w_matches/list_pick_maniac_perk_w_matches.dart';
import 'package:common_topdbd/model/pick_maps_w_matches/pick_maps_w_matches.dart';
import 'package:common_topdbd/model/pick_survivor_perk_w_matches/list_pick_survivor_perk_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickManiacWMatches extends BaseModel {
  final String name;
  final String uniqueIdByUser;
  final DateTime creationTime;
  final ListBanMapsWMatches listBanMapsWMatches;
  final PickMapsWMatches pickMapsWMatches;
  final ListPickManiacPerkWMatches listPickManiacPerkWMatches;
  final ListPickSurvivorPerkWMatches listPickSurvivorPerkWMatches;

  const PickManiacWMatches(this.name,this.uniqueIdByUser,this.creationTime,this.listBanMapsWMatches, this.pickMapsWMatches,this.listPickManiacPerkWMatches,this.listPickSurvivorPerkWMatches) : super(name);

  @override
  PickManiacWMatches get getClone => PickManiacWMatches(name,uniqueIdByUser,creationTime,listBanMapsWMatches.getClone,pickMapsWMatches.getClone,listPickManiacPerkWMatches.getClone,listPickSurvivorPerkWMatches.getClone);

  @override
  String toString() {
    return "PickManiacWMatches(name: $name, "
        "uniqueIdByUser: $uniqueIdByUser, "
        "creationTime: $creationTime, "
        "listBanMapsWMatches: ${listBanMapsWMatches.listModel}, "
        "pickMapsWMatches: $pickMapsWMatches, "
        "listPickManiacPerkWMatches: ${listPickManiacPerkWMatches.listModel}, "
        "listPickSurvivorPerkWMatches: ${listPickSurvivorPerkWMatches.listModel})";
  }
}