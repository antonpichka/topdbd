import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/search_users_vm/data_for_search_users_view.dart';
import 'package:web_topdbd/named_vm/search_users_vm/i_search_users_view_model.dart';

@immutable
final class TestSearchUsersViewModel extends BaseNamedViewModel<DataForSearchUsersView, DefaultStreamWState<DataForSearchUsersView>>
    implements ISearchUsersViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  TestSearchUsersViewModel()
      : super(DefaultStreamWState(DataForSearchUsersView(true,false,"")));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void setValue(String value) {
    getDataForNamedParameterNamedStreamWState.value = value;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  @override
  void clearValue() {
    getDataForNamedParameterNamedStreamWState.value = "";
    notifyStreamDataForNamedParameterNamedStreamWState();
  }
  
  @override
  void send(Function(String) callbackSuccess,Function(String) callbackException) {
    if(getDataForNamedParameterNamedStreamWState.value.isEmpty) {
      return;
    }
    if(getDataForNamedParameterNamedStreamWState.isNotSpamButton) {
      return;
    }
    getDataForNamedParameterNamedStreamWState.isNotSpamButton = true;
    final value = getDataForNamedParameterNamedStreamWState.value;
    getDataForNamedParameterNamedStreamWState.isNotSpamButton = false;
    getDataForNamedParameterNamedStreamWState.value = "";
    callbackSuccess(value);
  }
}