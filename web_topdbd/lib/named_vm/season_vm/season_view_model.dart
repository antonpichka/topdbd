import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/season_vm/data_for_season_view.dart';
import 'package:web_topdbd/named_vm/season_vm/i_season_view_model.dart';

@immutable
final class SeasonViewModel extends BaseNamedViewModel<DataForSeasonView,
    DefaultStreamWState<DataForSeasonView>> implements ISeasonViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  SeasonViewModel()
      : super(DefaultStreamWState(DataForSeasonView(true,0,DateTime.now(),DateTime.now(),DateTime.now())));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }
}