import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maniac_perk_w_match_balance/list_maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_perk_w_match_balance/maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/named_utility/ready_data_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_perks_w_match_balance_vm/enum_data_for_settings_list_maniac_perks_w_match_balance_view.dart';

final class DataForSettingsListManiacPerksWMatchBalanceView extends BaseDataForNamed<EnumDataForSettingsListManiacPerksWMatchBalanceView> {
  final ListManiacPerk listManiacPerk;
  String nameByManiacWMatchBalance;
  ListManiacPerkWMatchBalance listManiacPerkWMatchBalance;
  ListStrings listStringsWListManiacPerkWCheckbox;
  bool isMaxLeftScroll;
  bool isMaxRightScroll;

  DataForSettingsListManiacPerksWMatchBalanceView(super.isLoading,this.nameByManiacWMatchBalance,this.listManiacPerkWMatchBalance,this.listStringsWListManiacPerkWCheckbox,this.isMaxLeftScroll,this.isMaxRightScroll)
      : listManiacPerk = ReadyDataUtility.getListManiacPerk;

  @override
  EnumDataForSettingsListManiacPerksWMatchBalanceView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForSettingsListManiacPerksWMatchBalanceView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForSettingsListManiacPerksWMatchBalanceView.exception;
    }
    return EnumDataForSettingsListManiacPerksWMatchBalanceView.success;
  }

  ListManiacPerk get getListManiacPerkWhereWithoutElementsOfAnotherListParametersTwo {
    final clone = listManiacPerk.getClone;
    for(ManiacPerkWMatchBalance itemManiacPerkWMatchBalance in listManiacPerkWMatchBalance.listModel) {
      clone.deleteFromUniqueIdByModelParameterListModel(itemManiacPerkWMatchBalance.name);
    }
    return clone;
  }

  int get getIntWhereLengthLessTwoAndEqualParametersListManiacPerkWMatchBalanceAndListManiacPerk {
    if(listManiacPerkWMatchBalance.listModel.length < 2) {
      return listManiacPerkWMatchBalance.listModel.length + 1;
    }
    if(listManiacPerkWMatchBalance.listModel.length == listManiacPerk.listModel.length) {
      return listManiacPerkWMatchBalance.listModel.length;
    }
    return listManiacPerkWMatchBalance.listModel.length + 2;
  }

  void insertListManiacPerkWMatchBalanceParametersTwo() {
    listManiacPerkWMatchBalance
        .insertListFromListStrings(listStringsWListManiacPerkWCheckbox);
  }

  bool isWhereLengthLessTwoAndEqualParametersListManiacPerkWMatchBalanceAndListManiacPerk() {
    if(listManiacPerkWMatchBalance.listModel.length < 2) {
      return true;
    }
    return listManiacPerkWMatchBalance.listModel.length == listManiacPerk.listModel.length;
  }
}