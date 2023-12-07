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
      : super(DefaultStreamWState(DataForSearchUsersView(true)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }
}