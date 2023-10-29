import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ManiacWMatchBalance extends BaseModel {
  final Maniac maniac;
  final int lengthPickManiacPerk;
  final int lengthPickSurvivorPerk;
  final ListMaps listMaps;
  final ListManiacPerk listManiacPerk;
  final ListSurvivorPerk listSurvivorPerk;

  ManiacWMatchBalance(this.maniac, this.lengthPickManiacPerk, this.lengthPickSurvivorPerk, this.listMaps, this.listManiacPerk, this.listSurvivorPerk) : super(maniac.uniqueId);

  @override
  ManiacWMatchBalance get getClone => ManiacWMatchBalance(maniac.getClone,lengthPickManiacPerk, lengthPickSurvivorPerk, listMaps.getClone, listManiacPerk.getClone,listSurvivorPerk.getClone);

  @override
  String toString() {
    return "ManiacWMatchBalance(maniac: $maniac, "
        "lengthPickManiacPerk: $lengthPickManiacPerk, "
        "lengthPickSurvivorPerk: $lengthPickSurvivorPerk, "
        "ListMaps: ${listMaps.listModel}, "
        "ListManiacPerk: ${listManiacPerk.listModel}, "
        "ListSurvivorPerk: ${listSurvivorPerk.listModel})";
  }

  bool isWhereNotEqualsParametersLengthPickManiacPerkAndListManiacPerk() {
    return lengthPickManiacPerk != listManiacPerk.listModel.length;
  }

  bool isWhereNotEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerk() {
    return lengthPickSurvivorPerk != listSurvivorPerk.listModel.length;
  }

  bool isWhereNotEmptyAndEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerk() {
    if(listSurvivorPerk.listModel.isEmpty) {
      return false;
    }
    return lengthPickSurvivorPerk == listSurvivorPerk.listModel.length;
  }
}