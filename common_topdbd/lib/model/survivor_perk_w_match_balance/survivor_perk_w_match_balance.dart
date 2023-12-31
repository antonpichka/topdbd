import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class SurvivorPerkWMatchBalance extends BaseModel {
  final String name;

  const SurvivorPerkWMatchBalance(this.name) : super(name);

  @override
  SurvivorPerkWMatchBalance get getClone => SurvivorPerkWMatchBalance(name);

  @override
  String toString() {
    return "SurvivorPerkWMatchBalance(name: $name)";
  }

  SurvivorPerk get getSurvivorPerkWhereListSurvivorPerkWReadyDataUtilityParameterName {
    return AlgorithmsUtility.getSurvivorPerkWhereListSurvivorPerkWReadyDataUtilityFromName(name);
  }

  String getStringWhereSubstringFromEndParameterName(int end) {
    return AlgorithmsUtility.getStringWhereSubstringFromNameAndEnd(name,end);
  }
}