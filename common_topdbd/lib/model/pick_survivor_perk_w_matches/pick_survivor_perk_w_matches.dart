import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickSurvivorPerkWMatches extends BaseModel {
  final SurvivorPerk survivorPerk;
  final String uniqueIdByUser;

  PickSurvivorPerkWMatches(this.survivorPerk,this.uniqueIdByUser) : super(survivorPerk.uniqueId);

  @override
  PickSurvivorPerkWMatches get getClone => PickSurvivorPerkWMatches(survivorPerk.getClone,uniqueIdByUser);

  @override
  String toString() {
    return "PickSurvivorPerkWMatches(survivorPerk: $survivorPerk, "
        "uniqueIdByUser: $uniqueIdByUser)";
  }
}