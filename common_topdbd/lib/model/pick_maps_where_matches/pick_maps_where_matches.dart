import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class PickMapsWhereMatches extends BaseModel {
  final String name;

  const PickMapsWhereMatches(this.name) : super(name);

  @override
  PickMapsWhereMatches get getClone => PickMapsWhereMatches(name);

  @override
  String toString() {
    return name;
  }
}