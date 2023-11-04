import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickSurvivorPerkWMatches extends BaseModel {
  final String name;
  final String uniqueIdByUser;

  const PickSurvivorPerkWMatches(this.name,this.uniqueIdByUser) : super(name);

  @override
  PickSurvivorPerkWMatches get getClone => PickSurvivorPerkWMatches(name,uniqueIdByUser);

  @override
  String toString() {
    return "PickSurvivorPerkWMatches(name: $name, "
        "uniqueIdByUser: $uniqueIdByUser)";
  }
}