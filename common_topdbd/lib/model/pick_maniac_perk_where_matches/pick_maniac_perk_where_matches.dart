import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickManiacPerkWhereMatches extends BaseModel {
  final String name;

  const PickManiacPerkWhereMatches(this.name) : super(name);

  @override
  PickManiacPerkWhereMatches get getCloneModel => PickManiacPerkWhereMatches(name);
}