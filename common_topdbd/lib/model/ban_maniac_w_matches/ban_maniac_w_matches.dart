import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class BanManiacWMatches extends BaseModel {
  final String name;
  final String uniqueIdByUser;

  const BanManiacWMatches(this.name,this.uniqueIdByUser) : super(name);

  @override
  BanManiacWMatches get getClone => BanManiacWMatches(name,uniqueIdByUser);

  @override
  String toString() {
    return "BanManiacWMatches(name: $name, "
        "uniqueIdByUser: $uniqueIdByUser)";
  }
}