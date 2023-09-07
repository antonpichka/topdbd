import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Perk extends BaseModel {
  final String name;
  final String imagePath;

  const Perk(this.name,this.imagePath) : super(name);

  @override
  Perk get getCloneModel => Perk(name,imagePath);
}