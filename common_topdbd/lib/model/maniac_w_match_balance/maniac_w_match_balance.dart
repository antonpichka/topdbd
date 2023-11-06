import 'package:common_topdbd/model/maniac_perk_w_match_balance/list_maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/list_maps_w_match_balance.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/list_survivor_perk_w_match_balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ManiacWMatchBalance extends BaseModel {
  final String name;
  final int lengthPickManiacPerk;
  final int lengthPickSurvivorPerk;
  final ListMapsWMatchBalance listMapsWMatchBalance;
  final ListManiacPerkWMatchBalance listManiacPerkWMatchBalance;
  final ListSurvivorPerkWMatchBalance listSurvivorPerkWMatchBalance;

  const ManiacWMatchBalance(this.name, this.lengthPickManiacPerk, this.lengthPickSurvivorPerk, this.listMapsWMatchBalance, this.listManiacPerkWMatchBalance, this.listSurvivorPerkWMatchBalance) : super(name);

  @override
  ManiacWMatchBalance get getClone => ManiacWMatchBalance(name,lengthPickManiacPerk, lengthPickSurvivorPerk, listMapsWMatchBalance.getClone, listManiacPerkWMatchBalance.getClone,listSurvivorPerkWMatchBalance.getClone);

  @override
  String toString() {
    return "ManiacWMatchBalance(name: $name, "
        "lengthPickManiacPerk: $lengthPickManiacPerk, "
        "lengthPickSurvivorPerk: $lengthPickSurvivorPerk, "
        "listMapsWMatchBalance: ${listMapsWMatchBalance.listModel}, "
        "listManiacPerkWMatchBalance: ${listManiacPerkWMatchBalance.listModel}, "
        "listSurvivorPerkWMatchBalance: ${listSurvivorPerkWMatchBalance.listModel})";
  }

  bool isWhereNotEqualsParametersLengthPickManiacPerkAndListManiacPerkWMatchBalance() {
    return lengthPickManiacPerk != listManiacPerkWMatchBalance.listModel.length;
  }

  bool isWhereNotEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerkWMatchBalance() {
    return lengthPickSurvivorPerk != listSurvivorPerkWMatchBalance.listModel.length;
  }

  bool isWhereNotEmptyAndEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerkWMatchBalance() {
    return listSurvivorPerkWMatchBalance.listModel.isNotEmpty &&
        lengthPickSurvivorPerk == listSurvivorPerkWMatchBalance.listModel.length;
  }
}