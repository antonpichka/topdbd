import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickManiacPerkWMatches extends BaseModel {
  final String nameManiacPerk;
  final String uniqueIdByUser;

  const PickManiacPerkWMatches(this.nameManiacPerk,this.uniqueIdByUser) : super(nameManiacPerk);

  @override
  PickManiacPerkWMatches get getClone => PickManiacPerkWMatches(nameManiacPerk,uniqueIdByUser);

  @override
  String toString() {
    return "PickManiacPerkWMatches(nameManiacPerk: $nameManiacPerk, "
        "uniqueIdByUser: $uniqueIdByUser)";
  }
}