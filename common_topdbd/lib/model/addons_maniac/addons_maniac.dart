import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class AddonsManiac extends BaseModel {
  final String name;
  final String nameByManiac;
  final String imagePath;

  const AddonsManiac(this.name,this.nameByManiac,this.imagePath) : super(name);

  @override
  AddonsManiac get getClone => AddonsManiac(name,nameByManiac,imagePath);

  @override
  String toString() {
    return "AddonsManiac(name: $name, "
        "nameByManiac: $nameByManiac, "
        "imagePath: $imagePath)";
  }
}