import 'package:common_topdbd/model/perk/perk.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ManiacPerk extends BaseModel {
  final Perk perk;

  ManiacPerk(this.perk) : super(perk.uniqueId);

  @override
  ManiacPerk get getClone => ManiacPerk(perk.getClone);

  @override
  String toString() {
    return perk.name;
  }
}