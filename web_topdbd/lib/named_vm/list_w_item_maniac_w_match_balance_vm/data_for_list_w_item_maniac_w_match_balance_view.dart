import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/list_w_item_maniac_w_match_balance_vm/enum_data_for_list_w_item_maniac_w_match_balance_view.dart';

final class DataForListWItemManiacWMatchBalanceView extends BaseDataForNamed<EnumDataForListWItemManiacWMatchBalanceView> {
  DataForListWItemManiacWMatchBalanceView(super.isLoading);

  @override
  EnumDataForListWItemManiacWMatchBalanceView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForListWItemManiacWMatchBalanceView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForListWItemManiacWMatchBalanceView.exception;
    }
    return EnumDataForListWItemManiacWMatchBalanceView.success;
  }
}
