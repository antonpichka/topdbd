import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class BanMapsWMatches extends BaseModel {
  final String nameBannedMaps;
  final String uniqueIdByUser;

  const BanMapsWMatches(this.nameBannedMaps,this.uniqueIdByUser) : super(nameBannedMaps);

  @override
  BanMapsWMatches get getClone => BanMapsWMatches(nameBannedMaps,uniqueIdByUser);

  @override
  String toString() {
    return "BanMapsWMatches(nameBannedMaps: $nameBannedMaps, "
        "uniqueIdByUser: $uniqueIdByUser)";
  }
}