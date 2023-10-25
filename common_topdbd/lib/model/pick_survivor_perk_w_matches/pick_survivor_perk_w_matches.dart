import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickSurvivorPerkWMatches extends BaseModel {
  final String nameSurvivorPerk;
  final String uniqueIdByUser;

  const PickSurvivorPerkWMatches(this.nameSurvivorPerk,this.uniqueIdByUser) : super(nameSurvivorPerk);

  @override
  PickSurvivorPerkWMatches get getClone => PickSurvivorPerkWMatches(nameSurvivorPerk,uniqueIdByUser);

  @override
  String toString() {
    return "PickSurvivorPerkWMatches(nameSurvivorPerk: $nameSurvivorPerk, uniqueIdByUser: $uniqueIdByUser)";
  }
}