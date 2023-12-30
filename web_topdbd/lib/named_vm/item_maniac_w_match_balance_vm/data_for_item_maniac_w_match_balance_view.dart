import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/item_maniac_w_match_balance_vm/enum_data_for_item_maniac_w_match_balance_view.dart';

final class DataForItemManiacWMatchBalanceView extends BaseDataForNamed<EnumDataForItemManiacWMatchBalanceView> {
  bool isMaxLeftScroll;
  bool isMaxRightScroll;
  ManiacWMatchBalance selectedItemManiacWMatchBalance;

  DataForItemManiacWMatchBalanceView(super.isLoading,this.isMaxLeftScroll,this.isMaxRightScroll,this.selectedItemManiacWMatchBalance);

  @override
  EnumDataForItemManiacWMatchBalanceView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForItemManiacWMatchBalanceView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForItemManiacWMatchBalanceView.exception;
    }
    if(selectedItemManiacWMatchBalance.name.isEmpty) {
      return EnumDataForItemManiacWMatchBalanceView.noSelectedItemManiacWMatchBalanceView;
    }
    return EnumDataForItemManiacWMatchBalanceView.success;
  }
}