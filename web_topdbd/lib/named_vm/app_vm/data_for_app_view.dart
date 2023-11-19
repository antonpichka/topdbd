import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_vm/app_vm/enum_data_for_app_view.dart';

final class DataForAppView extends BaseDataForNamed<EnumDataForAppView> {
  List<bool> listLoaded;
  bool isThoseWorks;
  String uniqueIdByUser;
  String usernameByDiscordUserFirestore;
  String nameRoute;

  DataForAppView(super.isLoading,this.listLoaded,this.isThoseWorks,this.uniqueIdByUser,this.usernameByDiscordUserFirestore,this.nameRoute);

  @override
  EnumDataForAppView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForAppView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForAppView.exception;
    }
    if(isWhereLengthSmallerThanTwoParameterListLoaded()) {
      return EnumDataForAppView.isLoading;
    }
    if(isThoseWorks) {
      return EnumDataForAppView.thoseWorks;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.navigationViewQQHome)
    {
      return EnumDataForAppView.authMainViewWHome;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.navigationViewQQTopPlayers)
    {
      return EnumDataForAppView.authMainViewWTopPlayers;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.navigationViewQQBalance)
    {
      return EnumDataForAppView.authMainViewWBalance;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.navigationViewQQLogin)
    {
      return EnumDataForAppView.authMainViewWLogin;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.navigationViewQQTermsOfUse)
    {
      return EnumDataForAppView.authMainViewWTermsOfUse;
    }
    if(uniqueIdByUser.isNotEmpty &&
        usernameByDiscordUserFirestore == getIdWhereSplitParameterNameRoute &&
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQId)
    {
      return EnumDataForAppView.authMainViewWUserWId;
    }
    if(uniqueIdByUser.isNotEmpty &&
        usernameByDiscordUserFirestore != getIdWhereSplitParameterNameRoute &&
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQId)
    {
      return EnumDataForAppView.authMainViewWUserWIdFIRST;
    }
    if(uniqueIdByUser.isNotEmpty &&
        usernameByDiscordUserFirestore == getIdWhereSplitParameterNameRoute &&
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQStats)
    {
      return EnumDataForAppView.authMainViewWUserWIdWStats;
    }
    if(uniqueIdByUser.isNotEmpty &&
        usernameByDiscordUserFirestore != getIdWhereSplitParameterNameRoute &&
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQStats)
    {
      return EnumDataForAppView.authMainViewWUserWIdWStatsFIRST;
    }
    if(uniqueIdByUser.isNotEmpty &&
        usernameByDiscordUserFirestore == getIdWhereSplitParameterNameRoute &&
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQMatches)
    {
      return EnumDataForAppView.authMainViewWUserWIdWMatches;
    }
    if(uniqueIdByUser.isNotEmpty &&
        usernameByDiscordUserFirestore != getIdWhereSplitParameterNameRoute &&
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQMatches)
    {
      return EnumDataForAppView.authMainViewWUserWIdWMatchesFIRST;
    }
    if(uniqueIdByUser.isNotEmpty &&
        usernameByDiscordUserFirestore == getIdWhereSplitParameterNameRoute &&
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.authNavigationUserViewQQUserQQIdQQSettings)
    {
      return EnumDataForAppView.authMainViewWUserWIdWSettings;
    }
    if(uniqueIdByUser.isNotEmpty &&
        usernameByDiscordUserFirestore != getIdWhereSplitParameterNameRoute &&
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.authNavigationUserViewQQUserQQIdQQSettings)
    {
      return EnumDataForAppView.authMainViewWUserWIdWSettingsFIRST;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.navigationViewQQHome)
    {
      return EnumDataForAppView.mainViewWHome;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.navigationViewQQTopPlayers)
    {
      return EnumDataForAppView.mainViewWTopPlayers;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.navigationViewQQBalance)
    {
      return EnumDataForAppView.mainViewWBalance;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.navigationViewQQLogin)
    {
      return EnumDataForAppView.mainViewWLogin;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.navigationViewQQTermsOfUse)
    {
      return EnumDataForAppView.mainViewWTermsOfUse;
    }
    if(uniqueIdByUser.isEmpty &&
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQId)
    {
      return EnumDataForAppView.mainViewWUserWId;
    }
    if(uniqueIdByUser.isEmpty &&
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQStats)
    {
      return EnumDataForAppView.mainViewWUserWIdWStats;
    }
    if(uniqueIdByUser.isEmpty &&
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQMatches)
    {
      return EnumDataForAppView.mainViewWUserWIdWMatches;
    }
    if(uniqueIdByUser.isEmpty &&
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.authNavigationUserViewQQUserQQIdQQSettings)
    {
      return EnumDataForAppView.mainViewWUserWIdWSettings;
    }
    return EnumDataForAppView.notFound;
  }

  String get getWhereReplaceAllParameterNameRoute {
    return nameRoute.replaceAll(AlgorithmsUtility.regExpWNameRoute,AlgorithmsUtility.replacedNameWNameRoute);
  }

  String get getIdWhereSplitParameterNameRoute {
    bool isBreak = false;
    String id = "";
    for(String itemNameRoute in nameRoute.split("/")) {
      if(isBreak) {
        break;
      }
      if(itemNameRoute[0] != "{") {
        continue;
      }
      for(int i = 1; i < itemNameRoute.length; i++) {
        if(itemNameRoute[i] == "}") {
          isBreak = true;
          break;
        }
        id += itemNameRoute[i];
      }
    }
    return id;
  }

  void insertWhereLengthMoreThanOrEqualTwoParameterListLoaded() {
    if(listLoaded.length >= 2) {
      return;
    }
    listLoaded.add(true);
  }

  bool isWhereLengthSmallerThanTwoParameterListLoaded() {
    return listLoaded.length < 2;
  }
}