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
        usernameByDiscordUserFirestore == getIdWhereURLProcessingParameterNameRoute &&
        getNewUrlWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQId)
    {
      return EnumDataForAppView.authMainViewWUserWId;
    }
    if(uniqueIdByUser.isNotEmpty &&
        usernameByDiscordUserFirestore != getIdWhereURLProcessingParameterNameRoute &&
        getNewUrlWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQId)
    {
      return EnumDataForAppView.authMainViewWUserWIdFIRST;
    }
    if(uniqueIdByUser.isNotEmpty &&
        usernameByDiscordUserFirestore == getIdWhereURLProcessingParameterNameRoute &&
        getNewUrlWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQStats)
    {
      return EnumDataForAppView.authMainViewWUserWIdWStats;
    }
    if(uniqueIdByUser.isNotEmpty &&
        usernameByDiscordUserFirestore != getIdWhereURLProcessingParameterNameRoute &&
        getNewUrlWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQStats)
    {
      return EnumDataForAppView.authMainViewWUserWIdWStatsFIRST;
    }
    if(uniqueIdByUser.isNotEmpty &&
        usernameByDiscordUserFirestore == getIdWhereURLProcessingParameterNameRoute &&
        getNewUrlWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQMatches)
    {
      return EnumDataForAppView.authMainViewWUserWIdWMatches;
    }
    if(uniqueIdByUser.isNotEmpty &&
        usernameByDiscordUserFirestore != getIdWhereURLProcessingParameterNameRoute &&
        getNewUrlWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQMatches)
    {
      return EnumDataForAppView.authMainViewWUserWIdWMatchesFIRST;
    }
    if(uniqueIdByUser.isNotEmpty &&
        usernameByDiscordUserFirestore == getIdWhereURLProcessingParameterNameRoute &&
        getNewUrlWhereReplaceAllParameterNameRoute == KeysNavigationUtility.authNavigationUserViewQQUserQQIdQQSettings)
    {
      return EnumDataForAppView.authMainViewWUserWIdWSettings;
    }
    if(uniqueIdByUser.isNotEmpty) {
      return EnumDataForAppView.authMainViewWNotFound;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.navigationViewQQHome)
    {
      return EnumDataForAppView.unAuthMainViewWHome;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.navigationViewQQTopPlayers)
    {
      return EnumDataForAppView.unAuthMainViewWTopPlayers;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.navigationViewQQBalance)
    {
      return EnumDataForAppView.unAuthMainViewWBalance;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.navigationViewQQLogin)
    {
      return EnumDataForAppView.unAuthMainViewWLogin;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.navigationViewQQTermsOfUse)
    {
      return EnumDataForAppView.unAuthMainViewWTermsOfUse;
    }
    if(uniqueIdByUser.isEmpty &&
        getNewUrlWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQId)
    {
      return EnumDataForAppView.unAuthMainViewWUserWId;
    }
    if(uniqueIdByUser.isEmpty &&
        getNewUrlWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQStats)
    {
      return EnumDataForAppView.unAuthMainViewWUserWIdWStats;
    }
    if(uniqueIdByUser.isEmpty &&
        getNewUrlWhereReplaceAllParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQMatches)
    {
      return EnumDataForAppView.unAuthMainViewWUserWIdWMatches;
    }
    return EnumDataForAppView.unAuthMainViewWNotFound;
  }

  String get getNewUrlWhereReplaceAllParameterNameRoute {
    return nameRoute.replaceAll(AlgorithmsUtility.regExpWNameRoute,AlgorithmsUtility.replacedNameWNameRoute);
  }

  String get getIdWhereURLProcessingParameterNameRoute {
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