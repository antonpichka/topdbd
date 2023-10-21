import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ManiacWhereMatchBalance extends BaseModel {
  final Maniac maniac;
  final int lengthPickManiacPerk;
  final int lengthPickSurvivorPerk;
  final ListMaps listMaps;
  final ListManiacPerk listManiacPerk;
  final ListSurvivorPerk listSurvivorPerk;

  ManiacWhereMatchBalance(this.maniac, this.lengthPickManiacPerk, this.lengthPickSurvivorPerk, this.listMaps, this.listManiacPerk, this.listSurvivorPerk) : super(maniac.uniqueId);

  @override
  ManiacWhereMatchBalance get getClone => ManiacWhereMatchBalance(maniac.getClone,lengthPickManiacPerk, lengthPickSurvivorPerk, listMaps.getClone, listManiacPerk.getClone,listSurvivorPerk.getClone);

  bool isLengthPickMPNotEqualsLengthListMPParametersLengthPickManiacPerkAndListManiacPerk() {
    return lengthPickManiacPerk != listManiacPerk.listModel.length;
  }

  bool isLengthPickSPNotEqualsLengthListSPParametersLengthPickSurvivorPerkAndListSurvivorPerk() {
    return lengthPickSurvivorPerk != listSurvivorPerk.listModel.length;
  }

  bool isLengthPickSPEqualsLengthListSPAndIsNotEmptyListSPParametersLengthPickSurvivorPerkAndListSurvivorPerk() {
    if(listSurvivorPerk.listModel.isEmpty) {
      return false;
    }
    return lengthPickSurvivorPerk == listSurvivorPerk.listModel.length;
  }

  @override
  String toString() {
    return "${maniac.name} (ListMaps: ${listMaps.listModel}) (ListManiacPerk: ${listManiacPerk.listModel} (LengthPickManiacPerk: $lengthPickManiacPerk)) (ListSurvivorPerk: ${listSurvivorPerk.listModel} (LengthPickSurvivorPerk: $lengthPickSurvivorPerk))\n";
  }
}