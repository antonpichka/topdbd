import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_vm/app_vm/enum_data_for_app_view.dart';

final class DataForAppView extends BaseDataForNamed<EnumDataForAppView> {
  List<bool> listLoaded;
  String nameRoute;
  bool isThoseWorksByThoseWorks;
  String uniqueIdByUser;
  String usernameByDiscordUser;
  bool isAdminByRoleUser;
  bool isVerifiedUserByVerifiedUser;
  DateTime startOfTemporaryAccessByVerifiedUser;
  DateTime endOfTemporaryAccessByVerifiedUser;

  DataForAppView(super.isLoading,this.listLoaded,this.nameRoute,this.isThoseWorksByThoseWorks,this.uniqueIdByUser,this.usernameByDiscordUser,this.isAdminByRoleUser,this.isVerifiedUserByVerifiedUser,this.startOfTemporaryAccessByVerifiedUser,this.endOfTemporaryAccessByVerifiedUser);

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
    if(isThoseWorksByThoseWorks) {
      return EnumDataForAppView.thoseWorks;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.unAuthNavigationViewQQHome)
    {
      return EnumDataForAppView.authMainViewWHome;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.unAuthNavigationViewQQTopPlayers)
    {
      return EnumDataForAppView.authMainViewWTopPlayers;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.unAuthNavigationViewQQBalance &&
        isAdminByRoleUser)
    {
      return EnumDataForAppView.authMainViewWBalance;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.unAuthNavigationViewQQBalance &&
        !isAdminByRoleUser)
    {
      return EnumDataForAppView.authMainViewWBalanceFIRST;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.authNavigationBalanceViewQQBalanceQQSettings &&
        isAdminByRoleUser)
    {
      return EnumDataForAppView.authMainViewWBalanceWSettings;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.authNavigationViewQQAdmin &&
        isAdminByRoleUser)
    {
      return EnumDataForAppView.authMainViewWAdmin;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.unAuthNavigationViewQQLogin)
    {
      return EnumDataForAppView.authMainViewWLogin;
    }
    if(uniqueIdByUser.isNotEmpty &&
        nameRoute == KeysNavigationUtility.customFooterViewQQTermsOfUse)
    {
      return EnumDataForAppView.authMainViewWTermsOfUse;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereSearchPlayersParameterNameRoute == KeysNavigationUtility.searchUsersViewQQSearchPlayers)
    {
      return EnumDataForAppView.authMainViewWSearchPlayers;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQId &&
        usernameByDiscordUser == getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWId;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQId &&
        usernameByDiscordUser != getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWIdFIRST;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQStats &&
        usernameByDiscordUser == getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWIdWStats;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQStats &&
        usernameByDiscordUser != getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWIdWStatsFIRST;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQMatches &&
        usernameByDiscordUser == getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWIdWMatches;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQMatches &&
        usernameByDiscordUser != getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWIdWMatchesFIRST;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.authNavigationUserViewQQUserQQIdQQSettings &&
        usernameByDiscordUser == getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWIdWSettings;
    }
    if(uniqueIdByUser.isNotEmpty) {
      return EnumDataForAppView.authMainViewWNotFound;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.unAuthNavigationViewQQHome)
    {
      return EnumDataForAppView.unAuthMainViewWHome;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.unAuthNavigationViewQQTopPlayers)
    {
      return EnumDataForAppView.unAuthMainViewWTopPlayers;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.unAuthNavigationViewQQBalance)
    {
      return EnumDataForAppView.unAuthMainViewWBalance;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.unAuthNavigationViewQQLogin)
    {
      return EnumDataForAppView.unAuthMainViewWLogin;
    }
    if(uniqueIdByUser.isEmpty &&
        nameRoute == KeysNavigationUtility.customFooterViewQQTermsOfUse)
    {
      return EnumDataForAppView.unAuthMainViewWTermsOfUse;
    }
    if(uniqueIdByUser.isEmpty &&
        getUrlWhereSearchPlayersParameterNameRoute == KeysNavigationUtility.searchUsersViewQQSearchPlayers)
    {
      return EnumDataForAppView.unAuthMainViewWSearchPlayers;
    }
    if(uniqueIdByUser.isEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQId)
    {
      return EnumDataForAppView.unAuthMainViewWUserWId;
    }
    if(uniqueIdByUser.isEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQStats)
    {
      return EnumDataForAppView.unAuthMainViewWUserWIdWStats;
    }
    if(uniqueIdByUser.isEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.unAuthNavigationUserViewQQUserQQIdQQMatches)
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