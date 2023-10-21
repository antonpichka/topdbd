import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickManiacPerkWhereMatches extends BaseModel {
  final String name;
  final String uniqueIdByUser;

  const PickManiacPerkWhereMatches(this.name,this.uniqueIdByUser) : super(name);

  @override
  PickManiacPerkWhereMatches get getClone => PickManiacPerkWhereMatches(name,uniqueIdByUser);

  @override
  String toString() {
    return "$name (UniqueIdByUser: $uniqueIdByUser)";
  }
}