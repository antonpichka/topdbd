import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class BanManiacWMatches extends BaseModel {
  final String nameBannedManiac;
  final String uniqueIdByUser;

  const BanManiacWMatches(this.nameBannedManiac,this.uniqueIdByUser) : super(nameBannedManiac);

  @override
  BanManiacWMatches get getClone => BanManiacWMatches(nameBannedManiac,uniqueIdByUser);

  @override
  String toString() {
    return "BanManiacWMatches(nameBannedManiac: $nameBannedManiac, uniqueIdByUser: $uniqueIdByUser)";
  }
}