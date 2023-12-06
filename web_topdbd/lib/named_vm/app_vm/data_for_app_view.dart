import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_vm/app_vm/enum_data_for_app_view.dart';

final class DataForAppView extends BaseDataForNamed<EnumDataForAppView> {
  List<bool> listLoaded;
  bool isThoseWorks;
  String uniqueIdByUser;
  String usernameByDiscordUser;
  String nameRoute;

  DataForAppView(super.isLoading,this.listLoaded,this.isThoseWorks,this.uniqueIdByUser,this.usernameByDiscordUser,this.nameRoute);

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
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.navigationUserViewQQUserQQId &&
        usernameByDiscordUser == getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWId;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.navigationUserViewQQUserQQId &&
        usernameByDiscordUser != getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWIdFIRST;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.navigationUserViewQQUserQQIdQQStats &&
        usernameByDiscordUser == getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWIdWStats;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.navigationUserViewQQUserQQIdQQStats &&
        usernameByDiscordUser != getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWIdWStatsFIRST;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.navigationUserViewQQUserQQIdQQMatches &&
        usernameByDiscordUser == getIdWhereUserParameterNameRoute)
    {
      return EnumDataForAppView.authMainViewWUserWIdWMatches;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.navigationUserViewQQUserQQIdQQMatches &&
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
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.navigationUserViewQQUserQQId)
    {
      return EnumDataForAppView.unAuthMainViewWUserWId;
    }
    if(uniqueIdByUser.isEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.navigationUserViewQQUserQQIdQQStats)
    {
      return EnumDataForAppView.unAuthMainViewWUserWIdWStats;
    }
    if(uniqueIdByUser.isEmpty &&
        getUrlWhereUserParameterNameRoute == KeysNavigationUtility.navigationUserViewQQUserQQIdQQMatches)
    {
      return EnumDataForAppView.unAuthMainViewWUserWIdWMatches;
    }
    return EnumDataForAppView.unAuthMainViewWNotFound;
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