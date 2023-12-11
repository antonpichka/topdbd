import 'package:common_topdbd/model/season/list_season.dart';
import 'package:common_topdbd/model/season/season.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_ints_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_ints_ee_where_season_number_by_season_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_season_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_list_ee_season_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_season_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_list_ee_season_ee_from_list_season_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/list_season_vm/data_for_list_season_view.dart';
import 'package:web_topdbd/named_vm/list_season_vm/i_list_season_view_model.dart';

@immutable
final class TestListSeasonViewModel extends BaseNamedViewModel<DataForListSeasonView,
    DefaultStreamWState<DataForListSeasonView>> implements IListSeasonViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getListEESeasonEEParameterTempCacheService =
  GetListEESeasonEEParameterTempCacheService();
  final _getEEIntsEEWhereSeasonNumberBySeasonEEParameterTempCacheService =
  GetEEIntsEEWhereSeasonNumberBySeasonEEParameterTempCacheService();
  final _updateListEESeasonEEFromListSeasonEEParameterTempCacheService =
  UpdateListEESeasonEEFromListSeasonEEParameterTempCacheService();

  // NamedUtility

  TestListSeasonViewModel()
      : super(DefaultStreamWState(DataForListSeasonView(true,ListSeason(List.empty(growable: true)))));

  @override
  Future<String> init() async {
    final getListSeasonParameterTempCacheService = _getListEESeasonEEParameterTempCacheService
        .getListSeasonParameterTempCacheService();
    if(getListSeasonParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetListSeasonParameterTempCacheService(getListSeasonParameterTempCacheService.exceptionController);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.listSeason = getListSeasonParameterTempCacheService.parameter!.getClone;
    return KeysSuccessUtility.sUCCESS;
  }

  Future<String> _firstQQInitQQGetListSeasonParameterTempCacheService(ExceptionController exceptionController) async {
    final getIntsWhereSeasonNumberBySeasonParameterTempCacheService = _getEEIntsEEWhereSeasonNumberBySeasonEEParameterTempCacheService
        .getIntsWhereSeasonNumberBySeasonParameterTempCacheService();
    if(getIntsWhereSeasonNumberBySeasonParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstBranchOneQQInitQQGetListSeasonParameterTempCacheService(getIntsWhereSeasonNumberBySeasonParameterTempCacheService.exceptionController);
    }
    /// getListSeasonFromSeasonNumberBySeasonParameterFirebaseFirestoreService
    final listSeason = ListSeason(List.of(
        [
          Season(9,1000,50,DateTime.parse("2023-09-01"),DateTime.parse("2023-09-30")),
          Season(8,300,5,DateTime.parse("2023-08-01"),DateTime.parse("2023-08-31")),
          Season(7,100,10,DateTime.parse("2023-07-01"),DateTime.parse("2023-07-31")),
          Season(6,310,60,DateTime.parse("2023-06-01"),DateTime.parse("2023-06-30")),
          Season(5,422,10,DateTime.parse("2023-05-01"),DateTime.parse("2023-05-31")),
          Season(4,100,40,DateTime.parse("2023-04-01"),DateTime.parse("2023-04-30")),
          Season(3,2500,40,DateTime.parse("2023-03-01"),DateTime.parse("2023-03-31")),
          Season(2,2100,340,DateTime.parse("2023-02-01"),DateTime.parse("2023-02-28")),
          Season(1,1000000000000000000,5000000000000000000,DateTime.parse("2023-01-01"),DateTime.parse("2023-01-31")),
        ]));
    _updateListEESeasonEEFromListSeasonEEParameterTempCacheService
        .updateListSeasonFromListSeasonParameterTempCacheService(listSeason);
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.listSeason = listSeason.getClone;
    return KeysSuccessUtility.sUCCESS;
  }

  Future<String> _firstBranchOneQQInitQQGetListSeasonParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }
}