import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:common_topdbd/model/maniac_perk_w_match_balance/list_maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/list_maps_w_match_balance.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/list_survivor_perk_w_match_balance.dart';
import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ManiacWMatchBalance extends BaseModel {
  final String name;
  final int necessaryLengthPickedManiacPerk;
  final int necessaryLengthPickedSurvivorPerk;
  final ListMapsWMatchBalance listMapsWMatchBalance;
  final ListManiacPerkWMatchBalance listManiacPerkWMatchBalance;
  final ListSurvivorPerkWMatchBalance listSurvivorPerkWMatchBalance;

  const ManiacWMatchBalance(this.name, this.necessaryLengthPickedManiacPerk, this.necessaryLengthPickedSurvivorPerk, this.listMapsWMatchBalance, this.listManiacPerkWMatchBalance, this.listSurvivorPerkWMatchBalance) : super(name);

  @override
  ManiacWMatchBalance get getClone => ManiacWMatchBalance(name,necessaryLengthPickedManiacPerk, necessaryLengthPickedSurvivorPerk, listMapsWMatchBalance.getClone, listManiacPerkWMatchBalance.getClone,listSurvivorPerkWMatchBalance.getClone);

  @override
  String toString() {
    return "ManiacWMatchBalance(name: $name, "
        "necessaryLengthPickedManiacPerk: $necessaryLengthPickedManiacPerk, "
        "necessaryLengthPickedSurvivorPerk: $necessaryLengthPickedSurvivorPerk, "
        "listMapsWMatchBalance: ${listMapsWMatchBalance.listModel}, "
        "listManiacPerkWMatchBalance: ${listManiacPerkWMatchBalance.listModel}, "
        "listSurvivorPerkWMatchBalance: ${listSurvivorPerkWMatchBalance.listModel})";
  }

  ManiacWMatchBalance getManiacWMatchBalanceFromNewNecessaryLengthPickedManiacPerkParametersFive(int newNecessaryLengthPickedManiacPerk) {
    return ManiacWMatchBalance(
        name,
        newNecessaryLengthPickedManiacPerk,
        necessaryLengthPickedSurvivorPerk,
        listMapsWMatchBalance.getClone,
        listManiacPerkWMatchBalance.getClone,
        listSurvivorPerkWMatchBalance.getClone);
  }

  ManiacWMatchBalance getManiacWMatchBalanceFromNewNecessaryLengthPickedSurvivorPerkParametersFive(int newNecessaryLengthPickedSurvivorPerk) {
    return ManiacWMatchBalance(
        name,
        necessaryLengthPickedManiacPerk,
        newNecessaryLengthPickedSurvivorPerk,
        listMapsWMatchBalance.getClone,
        listManiacPerkWMatchBalance.getClone,
        listSurvivorPerkWMatchBalance.getClone);
  }

  Maniac get getManiacWhereListManiacWReadyDataUtilityParameterName {
    return AlgorithmsUtility.getManiacWhereListManiacWReadyDataUtilityFromName(name);
  }

  String getStringWhereSubstringFromEndParameterName(int end) {
    return AlgorithmsUtility.getStringWhereSubstringFromNameAndEnd(name,end);
  }

  bool isWhereNotEqualsParametersNecessaryLengthPickedManiacPerkAndListManiacPerkWMatchBalance() {
    return necessaryLengthPickedManiacPerk != listManiacPerkWMatchBalance.listModel.length;
  }

  bool isWhereNotEqualsParametersNecessaryLengthPickedSurvivorPerkAndListSurvivorPerkWMatchBalance() {
    return necessaryLengthPickedSurvivorPerk != listSurvivorPerkWMatchBalance.listModel.length;
  }

  bool isWhereNotEmptyAndEqualsParametersNecessaryLengthPickedSurvivorPerkAndListSurvivorPerkWMatchBalance() {
    return listSurvivorPerkWMatchBalance.listModel.isNotEmpty &&
        necessaryLengthPickedSurvivorPerk == listSurvivorPerkWMatchBalance.listModel.length;
  }

  bool isWhereEqualsFromNameParameterName(String name) {
    return this.name == name;
  }

  bool isWhereEmptyParametersListManiacPerkWMatchBalanceAndListSurvivorPerkWMatchBalance() {
    return listManiacPerkWMatchBalance.listModel.isEmpty &&
        listSurvivorPerkWMatchBalance.listModel.isEmpty;
  }
}