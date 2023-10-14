import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Navigation extends BaseModel {
  final String nameLocation;

  const Navigation(this.nameLocation) : super(nameLocation);

  @override
  Navigation get getCloneModel => Navigation(nameLocation);

  @override
  String toString() {
    return nameLocation;
  }
}