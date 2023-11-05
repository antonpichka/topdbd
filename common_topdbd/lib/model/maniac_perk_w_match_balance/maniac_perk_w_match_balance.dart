import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ManiacPerkWMatchBalance extends BaseModel {
  final String name;

  const ManiacPerkWMatchBalance(this.name) : super(name);

  @override
  ManiacPerkWMatchBalance get getClone => ManiacPerkWMatchBalance(name);

  @override
  String toString() {
    return "ManiacPerkWMatchBalance(name: $name)";
  }
}