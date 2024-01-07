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
    if(nameRoute == KeysNavigationUtility.topPlayers &&
        uIBUWUBDU.uniqueIdByUser.isNotEmpty)
    {
      return EnumDataForAppView.authMainViewWTopPlayers;
    }
    if(nameRoute == KeysNavigationUtility.balance &&
        uIBUWUBDU.isWhereNotEmptyAndTrueParametersUniqueIdByUserAndIsAdminByRoleUser())
    {
      return EnumDataForAppView.authMainViewWBalance;
    }
    if(nameRoute == KeysNavigationUtility.balance &&
        uIBUWUBDU.isWhereNotEmptyAndFalseParametersUniqueIdByUserAndIsAdminByRoleUser())
    {
      return EnumDataForAppView.authMainViewWBalanceFIRST;
    }
    if(nameRoute == KeysNavigationUtility.balanceQQSettings &&
        uIBUWUBDU.isWhereNotEmptyAndTrueParametersUniqueIdByUserAndIsAdminByRoleUser())
    {
      return EnumDataForAppView.authMainViewWBalanceWSettings;
    }
    if(nameRoute == KeysNavigationUtility.admin &&
        uIBUWUBDU.isWhereNotEmptyAndTrueParametersUniqueIdByUserAndIsAdminByRoleUser())
    {
      return EnumDataForAppView.authMainViewWAdmin;
    }
    if(nameRoute == KeysNavigationUtility.login &&
        uIBUWUBDU.uniqueIdByUser.isNotEmpty)
    {
      return EnumDataForAppView.authMainViewWLogin;
    }
    if(nameRoute == KeysNavigationUtility.termsOfUse &&
        uIBUWUBDU.uniqueIdByUser.isNotEmpty)
    {
      return EnumDataForAppView.authMainViewWTermsOfUse;
    }
    if(getUrlWhereSearchPlayersParameterNameRoute == KeysNavigationUtility.searchPlayers &&
        uIBUWUBDU.uniqueIdByUser.isNotEmpty)
    {
      return EnumDataForAppView.authMainViewWSearchPlayers;
    }
    if(getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQId &&
        uIBUWUBDU.isWhereNotEmptyAndEqualsFromStrParametersUniqueIdByUserAndUsernameByDiscordUser(getIdWhereUserParameterNameRoute))
    {
      return EnumDataForAppView.authMainViewWUserWId;
    }
    if(getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQId &&
        uIBUWUBDU.isWhereNotEmptyAndNotEqualsFromStrParametersUniqueIdByUserAndUsernameByDiscordUser(getIdWhereUserParameterNameRoute))
    {
      return EnumDataForAppView.authMainViewWUserWIdFIRST;
    }
    if(getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQIdQQStats &&
        uIBUWUBDU.isWhereNotEmptyAndEqualsFromStrParametersUniqueIdByUserAndUsernameByDiscordUser(getIdWhereUserParameterNameRoute))
    {
      return EnumDataForAppView.authMainViewWUserWIdWStats;
    }
    if(getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQIdQQStats &&
        uIBUWUBDU.isWhereNotEmptyAndNotEqualsFromStrParametersUniqueIdByUserAndUsernameByDiscordUser(getIdWhereUserParameterNameRoute))
    {
      return EnumDataForAppView.authMainViewWUserWIdWStatsFIRST;
    }
    if(getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQIdQQMatches &&
        uIBUWUBDU.isWhereNotEmptyAndEqualsFromStrParametersUniqueIdByUserAndUsernameByDiscordUser(getIdWhereUserParameterNameRoute))
    {
      return EnumDataForAppView.authMainViewWUserWIdWMatches;
    }
    if(getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQIdQQMatches &&
        uIBUWUBDU.isWhereNotEmptyAndNotEqualsFromStrParametersUniqueIdByUserAndUsernameByDiscordUser(getIdWhereUserParameterNameRoute))
    {
      return EnumDataForAppView.authMainViewWUserWIdWMatchesFIRST;
    }
    if(getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQIdQQSettings &&
        uIBUWUBDU.isWhereNotEmptyAndEqualsFromStrParametersUniqueIdByUserAndUsernameByDiscordUser(getIdWhereUserParameterNameRoute))
    {
      return EnumDataForAppView.authMainViewWUserWIdWSettings;
    }
    if(uIBUWUBDU.uniqueIdByUser.isNotEmpty) {
      return EnumDataForAppView.authMainViewWNotFound;
    }
    if(nameRoute == KeysNavigationUtility.home &&
        uIBUWUBDU.uniqueIdByUser.isEmpty)
    {
      return EnumDataForAppView.unAuthMainViewWHome;
    }
    if(nameRoute == KeysNavigationUtility.topPlayers &&
        uIBUWUBDU.uniqueIdByUser.isEmpty)
    {
      return EnumDataForAppView.unAuthMainViewWTopPlayers;
    }
    if(nameRoute == KeysNavigationUtility.balance &&
        uIBUWUBDU.uniqueIdByUser.isEmpty)
    {
      return EnumDataForAppView.unAuthMainViewWBalance;
    }
    if(nameRoute == KeysNavigationUtility.login &&
        uIBUWUBDU.uniqueIdByUser.isEmpty)
    {
      return EnumDataForAppView.unAuthMainViewWLogin;
    }
    if(nameRoute == KeysNavigationUtility.termsOfUse &&
        uIBUWUBDU.uniqueIdByUser.isEmpty)
    {
      return EnumDataForAppView.unAuthMainViewWTermsOfUse;
    }
    if(getUrlWhereSearchPlayersParameterNameRoute == KeysNavigationUtility.searchPlayers &&
        uIBUWUBDU.uniqueIdByUser.isEmpty)
    {
      return EnumDataForAppView.unAuthMainViewWSearchPlayers;
    }
    if(getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQId &&
        uIBUWUBDU.uniqueIdByUser.isEmpty)
    {
      return EnumDataForAppView.unAuthMainViewWUserWId;
    }
    if(getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQIdQQStats &&
        uIBUWUBDU.uniqueIdByUser.isEmpty)
    {
      return EnumDataForAppView.unAuthMainViewWUserWIdWStats;
    }
    if(getUrlWhereUserParameterNameRoute == KeysNavigationUtility.userQQIdQQMatches &&
        uIBUWUBDU.uniqueIdByUser.isEmpty)
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