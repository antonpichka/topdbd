import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class BanMapsWMatches extends BaseModel {
  final String name;
  final String uniqueIdByUser;

  const BanMapsWMatches(this.name,this.uniqueIdByUser) : super(name);

  @override
  BanMapsWMatches get getClone => BanMapsWMatches(name,uniqueIdByUser);

  @override
  String toString() {
    return "BanMapsWMatches(name: $name, "
        "uniqueIdByUser: $uniqueIdByUser)";
  }
}