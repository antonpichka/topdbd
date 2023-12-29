import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/list_maniac_w_match_balance_vm/data_for_list_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/list_maniac_w_match_balance_vm/i_list_maniac_w_match_balance_view_model.dart';

@immutable
final class ListManiacWMatchBalanceViewModel extends BaseNamedViewModel<DataForListManiacWMatchBalanceView,
    DefaultStreamWState<DataForListManiacWMatchBalanceView>> implements IListManiacWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  ListManiacWMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForListManiacWMatchBalanceView(true,false,false,MatchBalance(0,0,ListManiacWMatchBalance(List.empty(growable: true))),"")));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void setMaxScrollExtent() {
    // TODO: implement setMaxScrollExtent
  }

  @override
  void setMinScrollExtent() {
    // TODO: implement setMinScrollExtent
  }

  @override
  void onTapItemToListView(ManiacWMatchBalance itemManiacWMatchBalance) {
    // TODO: implement onTapItemToListView
  }
}