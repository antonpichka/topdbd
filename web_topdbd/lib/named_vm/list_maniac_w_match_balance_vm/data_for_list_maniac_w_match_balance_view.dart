import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/list_maniac_w_match_balance_vm/enum_data_for_list_maniac_w_match_balance_view.dart';

final class DataForListManiacWMatchBalanceView extends BaseDataForNamed<EnumDataForListManiacWMatchBalanceView> {
  bool isMaxLeftScroll;
  bool isMaxRightScroll;
  MatchBalance matchBalance;
  String selectedItemManiacWMatchBalance;

  DataForListManiacWMatchBalanceView(super.isLoading,this.isMaxLeftScroll,this.isMaxRightScroll,this.matchBalance,this.selectedItemManiacWMatchBalance);

  @override
  EnumDataForListManiacWMatchBalanceView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForListManiacWMatchBalanceView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForListManiacWMatchBalanceView.exception;
    }
    if(matchBalance
        .listManiacWMatchBalance
        .listModel
        .isEmpty)
    {
      return EnumDataForListManiacWMatchBalanceView.isEmpty;
    }
    return EnumDataForListManiacWMatchBalanceView.success;
  }
}