import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Maps extends BaseModel {
  final String name;
  final String imagePath;

  const Maps(this.name,this.imagePath) : super(name);

  @override
  Maps get getClone => Maps(name,imagePath);

  @override
  String toString() {
    return "Maps(name: $name, "
        "imagePath: $imagePath)";
  }

  bool isWhereEqualsFromListStringsParameterName(ListStrings listStrings) {
    bool isEquals = false;
    for(Strings itemStrings in listStrings.listModel) {
      if(itemStrings.field != name) {
        continue;
      }
      isEquals = true;
      break;
    }
    return isEquals;
  }
}