import 'package:common_topdbd/model/maps/maps.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class BanMapsWMatches extends BaseModel {
  final Maps maps;
  final String uniqueIdByUser;

  BanMapsWMatches(this.maps,this.uniqueIdByUser) : super(maps.uniqueId);

  @override
  BanMapsWMatches get getClone => BanMapsWMatches(maps.getClone,uniqueIdByUser);

  @override
  String toString() {
    return "BanMapsWMatches(maps: $maps, "
        "uniqueIdByUser: $uniqueIdByUser)";
  }
}