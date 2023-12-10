import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_dates_times_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_dates_times_ee_where_end_of_season_time_by_season_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_dates_times_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_dates_times_ee_where_start_of_season_time_by_season_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_ints_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_ints_ee_where_season_number_by_season_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/season_vm/data_for_season_view.dart';
import 'package:web_topdbd/named_vm/season_vm/i_season_view_model.dart';

@immutable
final class TestSeasonViewModel extends BaseNamedViewModel<DataForSeasonView,
    DefaultStreamWState<DataForSeasonView>> implements ISeasonViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEIntsEEWhereSeasonNumberBySeasonEEParameterTempCacheService =
  GetEEIntsEEWhereSeasonNumberBySeasonEEParameterTempCacheService();
  final _getEEDatesTimesEEWhereStartOfSeasonTimeBySeasonEEParameterTempCacheService =
  GetEEDatesTimesEEWhereStartOfSeasonTimeBySeasonEEParameterTempCacheService();
  final _getEEDatesTimesEEWhereEndOfSeasonTimeBySeasonEEParameterTempCacheService =
  GetEEDatesTimesEEWhereEndOfSeasonTimeBySeasonEEParameterTempCacheService();

  // NamedUtility

  TestSeasonViewModel()
      : super(DefaultStreamWState(DataForSeasonView(true,0,DateTime.now(),DateTime.now(),DateTime.now())));

  @override
  Future<String> init() async {
    final getIntsWhereSeasonNumberBySeasonParameterTempCacheService = _getEEIntsEEWhereSeasonNumberBySeasonEEParameterTempCacheService
        .getIntsWhereSeasonNumberBySeasonParameterTempCacheService();
    if(getIntsWhereSeasonNumberBySeasonParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetIntsWhereSeasonNumberBySeasonParameterTempCacheService(getIntsWhereSeasonNumberBySeasonParameterTempCacheService.exceptionController);
    }
    final getDatesTimesWhereStartOfSeasonTimeBySeasonParameterTempCacheService = _getEEDatesTimesEEWhereStartOfSeasonTimeBySeasonEEParameterTempCacheService
        .getDatesTimesWhereStartOfSeasonTimeBySeasonParameterTempCacheService();
    if(getDatesTimesWhereStartOfSeasonTimeBySeasonParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetDatesTimesWhereStartOfSeasonTimeBySeasonParameterTempCacheService(getDatesTimesWhereStartOfSeasonTimeBySeasonParameterTempCacheService.exceptionController);
    }
    final getDatesTimesWhereEndOfSeasonTimeBySeasonParameterTempCacheService = _getEEDatesTimesEEWhereEndOfSeasonTimeBySeasonEEParameterTempCacheService
        .getDatesTimesWhereEndOfSeasonTimeBySeasonParameterTempCacheService();
    if(getDatesTimesWhereEndOfSeasonTimeBySeasonParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetDatesTimesWhereEndOfSeasonTimeBySeasonParameterTempCacheService(getDatesTimesWhereEndOfSeasonTimeBySeasonParameterTempCacheService.exceptionController);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.seasonNumberBySeason = getIntsWhereSeasonNumberBySeasonParameterTempCacheService.parameter?.field ?? 0;
    getDataForNamedParameterNamedStreamWState.startOfSeasonTimeBySeason = getDatesTimesWhereStartOfSeasonTimeBySeasonParameterTempCacheService.parameter?.dateTime ?? DateTime.now();
    getDataForNamedParameterNamedStreamWState.endOfSeasonTimeBySeason = getDatesTimesWhereEndOfSeasonTimeBySeasonParameterTempCacheService.parameter?.dateTime ?? DateTime.now();
    return KeysSuccessUtility.sUCCESS;
  }

  Future<String> _firstQQInitQQGetIntsWhereSeasonNumberBySeasonParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQQInitQQGetDatesTimesWhereStartOfSeasonTimeBySeasonParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQQInitQQGetDatesTimesWhereEndOfSeasonTimeBySeasonParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }
}