import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/list_survivor_perk_w_match_balance.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/survivor_perk_w_match_balance.dart';
import 'package:common_topdbd/named_utility/ready_data_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/settings_list_survivor_perks_w_match_balance_vm/enum_data_for_settings_list_survivor_perks_w_match_balance_view.dart';

final class DataForSettingsListSurvivorPerksWMatchBalanceView extends BaseDataForNamed<EnumDataForSettingsListSurvivorPerksWMatchBalanceView> {
  final ListSurvivorPerk listSurvivorPerk;
  String nameByManiacWMatchBalance;
  ListSurvivorPerkWMatchBalance listSurvivorPerkWMatchBalance;
  ListStrings listStringsWListSurvivorPerkWCheckbox;
  bool isMaxLeftScroll;
  bool isMaxRightScroll;

  DataForSettingsListSurvivorPerksWMatchBalanceView(super.isLoading,this.nameByManiacWMatchBalance,this.listSurvivorPerkWMatchBalance,this.listStringsWListSurvivorPerkWCheckbox,this.isMaxLeftScroll,this.isMaxRightScroll)
      : listSurvivorPerk = ReadyDataUtility.getListSurvivorPerk;

  @override
  EnumDataForSettingsListSurvivorPerksWMatchBalanceView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForSettingsListSurvivorPerksWMatchBalanceView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForSettingsListSurvivorPerksWMatchBalanceView.exception;
    }
    return EnumDataForSettingsListSurvivorPerksWMatchBalanceView.success;
  }

  ListSurvivorPerk get getListSurvivorPerkWhereWithoutElementsOfAnotherListParametersTwo {
    final clone = listSurvivorPerk.getClone;
    for(SurvivorPerkWMatchBalance itemSurvivorPerkWMatchBalance in listSurvivorPerkWMatchBalance.listModel) {
      clone.deleteFromUniqueIdByModelParameterListModel(itemSurvivorPerkWMatchBalance.name);
    }
    return clone;
  }

  int get getIntWhereLengthLessTwoAndEqualParametersListSurvivorPerkWMatchBalanceAndListSurvivorPerk {
    if(listSurvivorPerkWMatchBalance.listModel.length < 2) {
      return listSurvivorPerkWMatchBalance.listModel.length + 1;
    }
    if(listSurvivorPerkWMatchBalance.listModel.length == listSurvivorPerk.listModel.length) {
      return listSurvivorPerkWMatchBalance.listModel.length;
    }
    return listSurvivorPerkWMatchBalance.listModel.length + 2;
  }

  void insertListSurvivorPerkWMatchBalanceParametersTwo() {
    listSurvivorPerkWMatchBalance
        .insertListFromListStrings(listStringsWListSurvivorPerkWCheckbox);
  }

  bool isWhereLengthLessTwoAndEqualParametersListSurvivorPerkWMatchBalanceAndListSurvivorPerk() {
    if(listSurvivorPerkWMatchBalance.listModel.length < 2) {
      return true;
    }
    return listSurvivorPerkWMatchBalance.listModel.length == listSurvivorPerk.listModel.length;
  }
}