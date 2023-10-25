import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickMapsWMatches extends BaseModel {
  final String nameMaps;

  const PickMapsWMatches(this.nameMaps) : super(nameMaps);

  @override
  PickMapsWMatches get getClone => PickMapsWMatches(nameMaps);

  @override
  String toString() {
    return "PickMapsWMatches(nameMaps: $nameMaps)";
  }
}