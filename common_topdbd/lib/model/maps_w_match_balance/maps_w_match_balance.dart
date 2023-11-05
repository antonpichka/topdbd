import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class MapsWMatchBalance extends BaseModel {
  final String name;

  const MapsWMatchBalance(this.name) : super(name);

  @override
  MapsWMatchBalance get getClone => MapsWMatchBalance(name);

  @override
  String toString() {
    return "MapsWMatchBalance(name: $name)";
  }
}