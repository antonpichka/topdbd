import 'package:common_topdbd/model/season/list_season.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/list_season_vm/data_for_list_season_view.dart';
import 'package:web_topdbd/named_vm/list_season_vm/i_list_season_view_model.dart';

@immutable
final class ListSeasonViewModel extends BaseNamedViewModel<DataForListSeasonView,
    DefaultStreamWState<DataForListSeasonView>> implements IListSeasonViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  ListSeasonViewModel()
      : super(DefaultStreamWState(DataForListSeasonView(true,ListSeason(List.empty(growable: true)))));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }
}