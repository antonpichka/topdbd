import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickSurvivorPerkWhereMatches extends BaseModel {
  final String name;

  const PickSurvivorPerkWhereMatches(this.name) : super(name);

  @override
  PickSurvivorPerkWhereMatches get getCloneModel => PickSurvivorPerkWhereMatches(name);
}