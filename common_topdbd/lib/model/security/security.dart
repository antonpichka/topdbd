import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Security extends BaseModel {
  final bool isHacked;

  const Security(this.isHacked) : super("$isHacked");

  @override
  Security get getClone => Security(isHacked);

  @override
  String toString() {
    return "Security(isHacked: $isHacked)";
  }
}