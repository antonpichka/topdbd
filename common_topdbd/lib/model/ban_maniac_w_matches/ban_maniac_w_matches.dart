import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class BanManiacWMatches extends BaseModel {
  final String nameBanManiac;
  final String uniqueIdByUser;

  const BanManiacWMatches(this.nameBanManiac,this.uniqueIdByUser) : super(nameBanManiac);

  @override
  BanManiacWMatches get getClone => BanManiacWMatches(nameBanManiac,uniqueIdByUser);

  @override
  String toString() {
    return "BanManiacWMatches(nameBanManiac: $nameBanManiac, uniqueIdByUser: $uniqueIdByUser)";
  }
}