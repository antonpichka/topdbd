import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class BanMapsWMatches extends BaseModel {
  final String nameBanMaps;
  final String uniqueIdByUser;

  const BanMapsWMatches(this.nameBanMaps,this.uniqueIdByUser) : super(nameBanMaps);

  @override
  BanMapsWMatches get getClone => BanMapsWMatches(nameBanMaps,uniqueIdByUser);

  @override
  String toString() {
    return "BanMapsWMatches(nameBanMaps: $nameBanMaps, uniqueIdByUser: $uniqueIdByUser)";
  }
}