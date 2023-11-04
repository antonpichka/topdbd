import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickManiacPerkWMatches extends BaseModel {
  final String name;
  final String uniqueIdByUser;

  const PickManiacPerkWMatches(this.name,this.uniqueIdByUser) : super(name);

  @override
  PickManiacPerkWMatches get getClone => PickManiacPerkWMatches(name,uniqueIdByUser);

  @override
  String toString() {
    return "PickManiacPerkWMatches(name: $name, "
        "uniqueIdByUser: $uniqueIdByUser)";
  }
}