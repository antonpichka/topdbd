import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/list_w_item_maniac_w_match_balance_vm/data_for_list_w_item_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/list_w_item_maniac_w_match_balance_vm/i_list_w_item_maniac_w_match_balance_view_model.dart';

@immutable
final class ListWItemManiacWMatchBalanceViewModel extends BaseNamedViewModel<DataForListWItemManiacWMatchBalanceView,
    DefaultStreamWState<DataForListWItemManiacWMatchBalanceView>> implements IListWItemManiacWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  ListWItemManiacWMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForListWItemManiacWMatchBalanceView(true)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }
}