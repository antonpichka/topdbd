import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_vm/app_vm/enum_data_for_app_view.dart';

final class DataForAppView extends BaseDataForNamed<EnumDataForAppView> {
  List<bool> listLoaded;
  bool isThoseWorks;
  String uniqueIdByUser;
  String nameRoute;

  DataForAppView(super.isLoading,this.listLoaded,this.isThoseWorks,this.uniqueIdByUser,this.nameRoute);

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
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.navigationUserViewQQUserQQId)
    {
      return EnumDataForAppView.authMainViewWUserQQId;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.navigationUserViewQQUserQQIdQQStats)
    {
      return EnumDataForAppView.authMainViewWUserQQIdQQStats;
    }
    if(uniqueIdByUser.isNotEmpty &&
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.navigationUserViewQQUserQQIdQQMatches)
    {
      return EnumDataForAppView.authMainViewWUserQQIdQQMatches;
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
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.navigationUserViewQQUserQQId)
    {
      return EnumDataForAppView.mainViewWUserQQId;
    }
    if(uniqueIdByUser.isEmpty &&
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.navigationUserViewQQUserQQIdQQStats)
    {
      return EnumDataForAppView.mainViewWUserQQIdQQStats;
    }
    if(uniqueIdByUser.isEmpty &&
        getWhereReplaceAllParameterNameRoute == KeysNavigationUtility.navigationUserViewQQUserQQIdQQMatches)
    {
      return EnumDataForAppView.mainViewWUserQQIdQQMatches;
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