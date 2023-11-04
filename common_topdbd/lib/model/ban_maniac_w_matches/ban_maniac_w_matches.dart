import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class BanManiacWMatches extends BaseModel {
  final Maniac maniac;
  final String uniqueIdByUser;

  BanManiacWMatches(this.maniac,this.uniqueIdByUser) : super(maniac.uniqueId);

  @override
  BanManiacWMatches get getClone => BanManiacWMatches(maniac.getClone,uniqueIdByUser);

  @override
  String toString() {
    return "BanManiacWMatches(maniac: $maniac, "
        "uniqueIdByUser: $uniqueIdByUser)";
  }
}