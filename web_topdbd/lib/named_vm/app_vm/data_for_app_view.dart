import 'package:common_topdbd/model/uibu_w_ubdu/uibu_w_ubdu.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_vm/app_vm/enum_data_for_app_view.dart';

final class DataForAppView extends BaseDataForNamed<EnumDataForAppView> {
  String nameRoute;
  UIBUWUBDU uIBUWUBDU;
  DateTime currentTime;

  DataForAppView(super.isLoading,this.nameRoute,this.uIBUWUBDU,this.currentTime);

  @override
  EnumDataForAppView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForAppView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForAppView.exception;
    }
    if(nameRoute == KeysNavigationUtility.notVerifiedUser &&
        uIBUWUBDU.isWhereNotEmptyWNotVerifiedUserAndLessThanFromDateTime(currentTime))
    {
      return EnumDataForAppView.notVerifiedUser;
    }
    if(nameRoute == KeysNavigationUtility.hacked &&
        uIBUWUBDU.isWhereNotEmptyAndTrueParametersUniqueIdByUserAndIsHacked())
    {
      return EnumDataForAppView.hacked;
    }
    if(nameRoute == KeysNavigationUtility.login &&
        uIBUWUBDU.uniqueIdByUser.isEmpty)
    {
      return EnumDataForAppView.login;
    }
    if(nameRoute == KeysNavigationUtility.home &&
        uIBUWUBDU.uniqueIdByUser.isNotEmpty)
    {
      return EnumDataForAppView.authMainViewWHome;
    }
    if(uIBUWUBDU.uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.topPlayers)
    {
      return EnumDataForAppView.authMainViewWTopPlayers;
    }
    if(nameRoute == KeysNavigationUtility.balance &&
        uIBUWUBDU.uniqueIdByUser.isNotEmpty &&
        uIBUWUBDU.isAdminByRoleUser)
    {
      return EnumDataForAppView.authMainViewWBalance;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.balance &&
        !isAdminByRoleUser)
    {
      return EnumDataForAppView.authMainViewWBalanceFIRST;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.balanceQQSettings &&
        isAdminByRoleUser)
    {
      return EnumDataForAppView.authMainViewWBalanceWSettings;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.admin &&
        isAdminByRoleUser)
    {
      return EnumDataForAppView.authMainViewWAdmin;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.login)
    {
      return EnumDataForAppView.authMainViewWLogin;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.termsOfUse)
    {
      return EnumDataForAppView.authMainViewWTermsOfUse;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereSearchPlayersParameterNameRoute == KeysNavigationUtility.searchPlayers)
    {
      return EnumDataForAppView.authMainViewWSearchPlayers;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQId &&
        usernameByDiscordUser == getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWId;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQId &&
        usernameByDiscordUser != getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWIdFIRST;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQIdQQStats &&
        usernameByDiscordUser == getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWIdWStats;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQIdQQStats &&
        usernameByDiscordUser != getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWIdWStatsFIRST;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQIdQQMatches &&
        usernameByDiscordUser == getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWIdWMatches;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQIdQQMatches &&
        usernameByDiscordUser != getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWIdWMatchesFIRST;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQIdQQSettings &&
        usernameByDiscordUser == getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWIdWSettings;
    }
    if(uniqueIdByUser.isNotEmpty) {
      return EnumDataForAppView.authMainViewWNotFound;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.home)
    {
      return EnumDataForAppView.unAuthMainViewWHome;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.topPlayers)
    {
      return EnumDataForAppView.unAuthMainViewWTopPlayers;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.balance)
    {
      return EnumDataForAppView.unAuthMainViewWBalance;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.login)
    {
      return EnumDataForAppView.unAuthMainViewWLogin;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.termsOfUse)
    {
      return EnumDataForAppView.unAuthMainViewWTermsOfUse;
    }
    if(uniqueIdByUser.isEmpty &&
        getUrlWhereSearchPlayersParameterNameRoute == KeysNavigationUtility.searchPlayers)
    {
      return EnumDataForAppView.unAuthMainViewWSearchPlayers;
    }
    if(uniqueIdByUser.isEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQId)
    {
      return EnumDataForAppView.unAuthMainViewWUserWId;
    }
    if(uniqueIdByUser.isEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQIdQQStats)
    {
      return EnumDataForAppView.unAuthMainViewWUserWIdWStats;
    }
    if(uniqueIdByUser.isEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQIdQQMatches)
    {
      return EnumDataForAppView.unAuthMainViewWUserWIdWMatches;
    }
    return EnumDataForAppView.unAuthMainViewWNotFound;
  }

  String get getUrlWhereSearchPlayersParameterNameRoute {
    String url = "";
    for(int i = 0; i < nameRoute.split("=").length; i++) {
      final itemNameRoute = nameRoute.split("=")[i];
      if(itemNameRoute == "#/search_players?q") {
        url += "$itemNameRoute=";
        continue;
      }
      url += "id";
    }
    return url;
  }

  String get getIdWhereSearchPlayersParameterNameRoute {
    if(nameRoute.split("=").length < 2) {
      return "";
    }
    if(nameRoute.split("=")[0] != "#/search_players?q") {
      return "";
    }
    return nameRoute.split("=")[1];
  }

  String get getUrlWhereUserParameterNameRoute {
    String url = "#";
    for(int i = 1; i < nameRoute.split("/").length;) {
      final itemNameRoute = nameRoute.split("/")[i];
      if(itemNameRoute != "user") {
        url += "/$itemNameRoute";
        i++;
        continue;
      }
      url += "/user/id";
      i = i + 2;
    }
    return url;
  }

  String get getIdWhereUserParameterNameRoute {
    if(nameRoute.split("/").length < 3) {
      return "";
    }
    if(nameRoute.split("/")[1] != "user") {
      return "";
    }
    return nameRoute.split("/")[2];
  }

  String get getSuffixUrlWhereUserParameterNameRoute {
    if(nameRoute.split("/").length < 2) {
      return "";
    }
    if(nameRoute.split("/")[1] != "user") {
      return "";
    }
    if(nameRoute.split("/").length < 4) {
      return "";
    }
    return nameRoute.split("/")[3];
  }

  String get getSuffixUrlWhereBalanceParameterNameRoute {
    if(nameRoute.split("/").length < 2) {
      return "";
    }
    if(nameRoute.split("/")[1] != "balance") {
      return "";
    }
    if(nameRoute.split("/").length < 3) {
      return "";
    }
    return nameRoute.split("/")[2];
  }

  bool isWhereLessThanParametersUIBUWUBDUAndCurrentTime() {
    return uIBUWUBDU.isWhereLessThanFromDateTimeParameterEndOfTemporaryAccessByVerifiedUser(currentTime);
  }

  bool isWhereEqualsNotVerifiedUserWHackedFromStr(String str) {
    if(str == KeysNavigationUtility.notVerifiedUser) {
      return true;
    }
    if(str == KeysNavigationUtility.hacked) {
      return true;
    }
    return false;
  }
}