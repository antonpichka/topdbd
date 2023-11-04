import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickManiacPerkWMatches extends BaseModel {
  final ManiacPerk maniacPerk;
  final String uniqueIdByUser;

  PickManiacPerkWMatches(this.maniacPerk,this.uniqueIdByUser) : super(maniacPerk.uniqueId);

  @override
  PickManiacPerkWMatches get getClone => PickManiacPerkWMatches(maniacPerk.getClone,uniqueIdByUser);

  @override
  String toString() {
    return "PickManiacPerkWMatches(maniacPerk: $maniacPerk, "
        "uniqueIdByUser: $uniqueIdByUser)";
  }
}