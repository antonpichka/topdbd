import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickMapsWMatches extends BaseModel {
  final String name;

  const PickMapsWMatches(this.name) : super(name);

  @override
  PickMapsWMatches get getClone => PickMapsWMatches(name);

  @override
  String toString() {
    return "PickMapsWMatches(name: $name)";
  }
}