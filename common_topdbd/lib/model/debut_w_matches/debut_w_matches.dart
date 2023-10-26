import 'package:common_topdbd/model/ban_maniac_w_matches/list_ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/debut_w_matches/enum_stage_named.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/list_pick_maniac_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class DebutWMatches extends BaseModel {
  final EnumStageNamed enumStageNamed;
  final bool isStageNamedWFirstUniqueIdByUser;
  final ListBanManiacWMatches listBanManiacWMatches;
  final ListPickManiacWMatches listPickManiacWMatches;

  DebutWMatches(super.strStageNamed, this.isStageNamedWFirstUniqueIdByUser, this.listBanManiacWMatches, this.listPickManiacWMatches)
      : enumStageNamed = _getEnumStageNamedFromStrStageNamed(strStageNamed);

  static EnumStageNamed _getEnumStageNamedFromStrStageNamed(String strStageNamed) {
    if(strStageNamed == EnumStageNamed.systemPickManiac.name) {
      return EnumStageNamed.systemPickManiac;
    }
    if(strStageNamed == EnumStageNamed.systemPickMapsToManiac.name) {
      return EnumStageNamed.systemPickMapsToManiac;
    }
    if(strStageNamed == EnumStageNamed.systemPickManiacPerkToManiac.name) {
      return EnumStageNamed.systemPickManiacPerkToManiac;
    }
    if(strStageNamed == EnumStageNamed.systemPickSurvivorPerkToManiac.name) {
      return EnumStageNamed.systemPickSurvivorPerkToManiac;
    }
    if(strStageNamed == EnumStageNamed.banManiac.name) {
      return EnumStageNamed.banManiac;
    }
    if(strStageNamed == EnumStageNamed.pickManiac.name) {
      return EnumStageNamed.pickManiac;
    }
    if(strStageNamed == EnumStageNamed.bansMapsToManiac.name) {
      return EnumStageNamed.bansMapsToManiac;
    }
    if(strStageNamed == EnumStageNamed.pickManiacPerkToManiac.name) {
      return EnumStageNamed.pickManiacPerkToManiac;
    }
    if(strStageNamed == EnumStageNamed.pickSurvivorPerkToManiac.name) {
      return EnumStageNamed.pickSurvivorPerkToManiac;
    }
    return EnumStageNamed.ready;
  }

  @override
  DebutWMatches get getClone => DebutWMatches(enumStageNamed.name,isStageNamedWFirstUniqueIdByUser,listBanManiacWMatches.getClone,listPickManiacWMatches.getClone);
}