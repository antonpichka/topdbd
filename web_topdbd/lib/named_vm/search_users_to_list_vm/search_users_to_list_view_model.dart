import 'package:common_topdbd/model/duf_w_country_w_role_user/list_duf_w_country_w_role_user.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/search_users_to_list_vm/data_for_search_users_to_list_view.dart';
import 'package:web_topdbd/named_vm/search_users_to_list_vm/i_search_users_to_list_view_model.dart';

@immutable
final class SearchUsersToListViewModel extends BaseNamedViewModel<DataForSearchUsersToListView, DefaultStreamWState<DataForSearchUsersToListView>>
    implements ISearchUsersToListViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  SearchUsersToListViewModel(String value)
      : super(DefaultStreamWState(DataForSearchUsersToListView(true,value,ListDUFWCountryWRoleUser(List.empty(growable: true)))));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

}