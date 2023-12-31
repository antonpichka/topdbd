import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ManiacPerkWMatchBalance extends BaseModel {
  final String name;

  const ManiacPerkWMatchBalance(this.name) : super(name);

  @override
  ManiacPerkWMatchBalance get getClone => ManiacPerkWMatchBalance(name);

  @override
  String toString() {
    return "ManiacPerkWMatchBalance(name: $name)";
  }

  ManiacPerk get getManiacPerkWhereListManiacPerkWReadyDataUtilityParameterName {
    return AlgorithmsUtility.getManiacPerkWhereListManiacPerkWReadyDataUtilityFromName(name);
  }

  String getStringWhereSubstringFromEndParameterName(int end) {
    return AlgorithmsUtility.getStringWhereSubstringFromNameAndEnd(name,end);
  }
}