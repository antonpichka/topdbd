import 'package:common_topdbd/model/maniac/list_maniac.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/named_utility/ready_data_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_w_match_balance_vm/enum_data_for_settings_list_maniac_w_match_balance_view.dart';

final class DataForSettingsListManiacWMatchBalanceView extends BaseDataForNamed<EnumDataForSettingsListManiacWMatchBalanceView> {
  final ListManiac listManiac;
  bool isMaxLeftScroll;
  bool isMaxRightScroll;
  String selectedItemManiacWMatchBalance;
  ListManiacWMatchBalance listManiacWMatchBalanceByMatchBalance;

  DataForSettingsListManiacWMatchBalanceView(super.isLoading,this.isMaxLeftScroll,this.isMaxRightScroll,this.selectedItemManiacWMatchBalance,this.listManiacWMatchBalanceByMatchBalance)
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

  int get getIntWhereLengthDefinesEqualsParametersListManiacWMatchBalanceByMatchBalanceAndListManiac {
    if(listManiacWMatchBalanceByMatchBalance.listModel.length == listManiac.listModel.length) {
      return listManiacWMatchBalanceByMatchBalance.listModel.length;
    }
    return listManiacWMatchBalanceByMatchBalance.listModel.length + 2;
  }
}