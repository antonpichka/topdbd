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
}