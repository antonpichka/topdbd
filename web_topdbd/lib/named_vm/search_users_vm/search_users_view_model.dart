import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/search_users_vm/data_for_search_users_view.dart';
import 'package:web_topdbd/named_vm/search_users_vm/i_search_users_view_model.dart';

@immutable
final class SearchUsersViewModel extends BaseNamedViewModel<DataForSearchUsersView, DefaultStreamWState<DataForSearchUsersView>>
    implements ISearchUsersViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  SearchUsersViewModel(String value)
      : super(DefaultStreamWState(DataForSearchUsersView(true,false,value)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void send(Function(String p1) callbackSuccess, Function(String p2) callbackException) {
    // TODO: implement send
  }

  @override
  void setValue(String value) {
    // TODO: implement setValue
  }

  @override
  void clearValue() {
    // TODO: implement clearValue
  }
}