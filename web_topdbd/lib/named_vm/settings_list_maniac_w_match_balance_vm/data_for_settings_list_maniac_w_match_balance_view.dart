import 'package:common_topdbd/model/maniac/list_maniac.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/named_utility/ready_data_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_w_match_balance_vm/enum_data_for_settings_list_maniac_w_match_balance_view.dart';

final class DataForSettingsListManiacWMatchBalanceView extends BaseDataForNamed<EnumDataForSettingsListManiacWMatchBalanceView> {
  final ListManiac listManiac;
  ListStrings listStringsWListManiacWCheckbox;
  bool isMaxLeftScroll;
  bool isMaxRightScroll;
  String selectedItemManiacWMatchBalance;
  ListManiacWMatchBalance listManiacWMatchBalanceByMatchBalance;

  DataForSettingsListManiacWMatchBalanceView(super.isLoading,this.listStringsWListManiacWCheckbox,this.isMaxLeftScroll,this.isMaxRightScroll,this.selectedItemManiacWMatchBalance,this.listManiacWMatchBalanceByMatchBalance)
      : listManiac = ReadyDataUtility.getListManiac;

  @override
  EnumDataForSettingsListManiacWMatchBalanceView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForSettingsListManiacWMatchBalanceView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForSettingsListManiacWMatchBalanceView.exception;
    }
    return EnumDataForSettingsListManiacWMatchBalanceView.success;
  }

  ListManiac get getListManiacWhereWithoutElementsOfAnotherListParametersTwo {
    final clone = listManiac.getClone;
    for(ManiacWMatchBalance itemManiacWMatchBalanceByMatchBalance in listManiacWMatchBalanceByMatchBalance.listModel) {
      clone.deleteFromUniqueIdByModelParameterListModel(itemManiacWMatchBalanceByMatchBalance.name);
    }
    return clone;
  }

  int get getIntWhereLengthLessTwoAndEqualParametersListManiacWMatchBalanceByMatchBalanceAndListManiac {
    if(listManiacWMatchBalanceByMatchBalance.listModel.length < 2) {
      return listManiacWMatchBalanceByMatchBalance.listModel.length + 1;
    }
    if(listManiacWMatchBalanceByMatchBalance.listModel.length == listManiac.listModel.length) {
      return listManiacWMatchBalanceByMatchBalance.listModel.length;
    }
    return listManiacWMatchBalanceByMatchBalance.listModel.length + 2;
  }

  bool isWhereLengthLessTwoAndEqualParametersListManiacWMatchBalanceByMatchBalanceAndListManiac() {
    if(listManiacWMatchBalanceByMatchBalance.listModel.length < 2) {
      return true;
    }
    return listManiacWMatchBalanceByMatchBalance.listModel.length == listManiac.listModel.length;
  }

  bool isWhereEqualsFromNameParameterSelectedItemManiacWMatchBalance(String name) {
    return selectedItemManiacWMatchBalance == name;
  }
}