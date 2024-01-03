import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_vm/enum_data_for_settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_view.dart';

final class DataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView extends BaseDataForNamed<EnumDataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView> {
  final String nameByManiacWMatchBalance;
  int necessaryLengthPickedManiacPerkByManiacWMatchBalance;
  int lengthByListManiacPerkWMatchBalance;

  DataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView(super.isLoading,this.nameByManiacWMatchBalance,this.necessaryLengthPickedManiacPerkByManiacWMatchBalance,this.lengthByListManiacPerkWMatchBalance);

  @override
  EnumDataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView.exception;
    }
    return EnumDataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView.success;
  }

  List<int> get getListIntWhereLocalLengthLessThanParameterLengthByListManiacPerkWMatchBalance {
    final listInt = List<int>.of([0],growable: true);
    if(lengthByListManiacPerkWMatchBalance <= 0) {
      return listInt;
    }
    int number = 1;
    while(listInt.length < (lengthByListManiacPerkWMatchBalance+1)) {
      listInt.add(number);
      number++;
    }
    return listInt;
  }
}