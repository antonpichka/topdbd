import 'package:common_topdbd/model/perk/perk.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class SurvivorPerk extends BaseModel {
  final Perk perk;

  SurvivorPerk(this.perk) : super(perk.uniqueId);

  @override
  SurvivorPerk get getCloneModel => SurvivorPerk(perk.getCloneModel);

  @override
  String toString() {
    return perk.name;
  }
}