import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickSurvivorPerkWhereMatches extends BaseModel {
  final String name;
  final String uniqueIdByUser;

  const PickSurvivorPerkWhereMatches(this.name,this.uniqueIdByUser) : super(name);

  @override
  PickSurvivorPerkWhereMatches get getCloneModel => PickSurvivorPerkWhereMatches(name,uniqueIdByUser);

  @override
  String toString() {
    return name;
  }
}