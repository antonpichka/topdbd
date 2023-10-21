import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Maniac extends BaseModel {
  final String name;
  final String imagePath;

  const Maniac(this.name,this.imagePath) : super(name);

  @override
  Maniac get getClone => Maniac(name,imagePath);

  @override
  String toString() {
    return name;
  }
}