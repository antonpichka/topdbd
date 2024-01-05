import 'package:common_topdbd/model/maniac_perk_w_match_balance/list_maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_perk_w_match_balance/maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/list_maps_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/maps_w_match_balance.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/list_survivor_perk_w_match_balance.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/survivor_perk_w_match_balance.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_ints_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_ints_ee_where_season_number_by_season_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_match_balance_ee_from_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_match_balance_ee_where_its_like_mutable_ee_from_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_balance_vm/data_for_settings_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_balance_vm/i_settings_balance_view_model.dart';

@immutable
final class TestSettingsBalanceViewModel extends BaseNamedViewModel<DataForSettingsBalanceView,
    DefaultStreamWState<DataForSettingsBalanceView>> implements ISettingsBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEIntsEEWhereSeasonNumberBySeasonEEParameterTempCacheService =
  GetEEIntsEEWhereSeasonNumberBySeasonEEParameterTempCacheService();
  final _updateEEMatchBalanceEEFromMatchBalanceEEParameterTempCacheService =
  UpdateEEMatchBalanceEEFromMatchBalanceEEParameterTempCacheService();
  final _updateEEMatchBalanceEEWhereItsLikeMutableEEFromMatchBalanceEEParameterTempCacheService =
  UpdateEEMatchBalanceEEWhereItsLikeMutableEEFromMatchBalanceEEParameterTempCacheService();

  // NamedUtility

  TestSettingsBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsBalanceView(true)));

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
    /// getMatchBalanceFromSeasonNumberBySeasonParameterFirebaseFirestoreService
    final matchBalance = MatchBalance(
        getIntsWhereSeasonNumberBySeasonParameterTempCacheService.parameter?.field ?? 0,
        3,
        ListManiacWMatchBalance(List.of([
          ManiacWMatchBalance(
              "Huntress",
              1,
              1,
              ListMapsWMatchBalance(List.of([
                const MapsWMatchBalance("Chapel"),
                const MapsWMatchBalance("Coal Tower"),
                const MapsWMatchBalance("Mine"),
              ])),
              ListManiacPerkWMatchBalance(List.of([
                const ManiacPerkWMatchBalance("Brutal Strength"),
                const ManiacPerkWMatchBalance("Bamboozle")
              ])),
              ListSurvivorPerkWMatchBalance(List.of([
                const SurvivorPerkWMatchBalance("Sprint Burst"),
              ]))
          ),
          ManiacWMatchBalance(
              "Hillbilly",
              1,
              1,
              ListMapsWMatchBalance(List.of([
                const MapsWMatchBalance("Chapel"),
                const MapsWMatchBalance("Coal Tower"),
                const MapsWMatchBalance("Mine"),
              ])),
              ListManiacPerkWMatchBalance(List.of([
                const ManiacPerkWMatchBalance("Brutal Strength"),
                const ManiacPerkWMatchBalance("Bamboozle")
              ])),
              ListSurvivorPerkWMatchBalance(List.of([
                const SurvivorPerkWMatchBalance("Sprint Burst"),
              ]))
          ),
          ManiacWMatchBalance(
              "Cannibal",
              0,
              1,
              ListMapsWMatchBalance(List.of([
                const MapsWMatchBalance("Chapel"),
                const MapsWMatchBalance("Coal Tower"),
                const MapsWMatchBalance("Mine"),
              ])),
              ListManiacPerkWMatchBalance(List.of([])),
              ListSurvivorPerkWMatchBalance(List.of([
                const SurvivorPerkWMatchBalance("Sprint Burst"),
                const SurvivorPerkWMatchBalance("Lithe")
              ]))
          ),
          ManiacWMatchBalance(
              "Trapper",
              2,
              2,
              ListMapsWMatchBalance(List.of([
                const MapsWMatchBalance("Chapel"),
                const MapsWMatchBalance("Gas Station"),
                const MapsWMatchBalance("Coal Tower"),
                const MapsWMatchBalance("Mine"),
                const MapsWMatchBalance("StoreHouse"),
              ])),
              ListManiacPerkWMatchBalance(List.of([
                const ManiacPerkWMatchBalance("Brutal Strength"),
                const ManiacPerkWMatchBalance("Bamboozle")
              ])),
              ListSurvivorPerkWMatchBalance(List.of([
                const SurvivorPerkWMatchBalance("Sprint Burst"),
                const SurvivorPerkWMatchBalance("Lithe")
              ]))
          ),
          ManiacWMatchBalance(
              "Blight",
              0,
              1,
              ListMapsWMatchBalance(List.of([
                const MapsWMatchBalance("StoreHouse"),
                const MapsWMatchBalance("Gas Station"),
                const MapsWMatchBalance("Scrapyard")
              ])),
              ListManiacPerkWMatchBalance(List.of([])),
              ListSurvivorPerkWMatchBalance(List.of([
                const SurvivorPerkWMatchBalance("Sprint Burst"),
                const SurvivorPerkWMatchBalance("Lithe")
              ]))
          ),
          ManiacWMatchBalance(
              "Nurse",
              1,
              0,
              ListMapsWMatchBalance(List.of([
                const MapsWMatchBalance("StoreHouse"),
                const MapsWMatchBalance("Gas Station"),
                const MapsWMatchBalance("Scrapyard")
              ])),
              ListManiacPerkWMatchBalance(List.of([
                const ManiacPerkWMatchBalance("Brutal Strength"),
                const ManiacPerkWMatchBalance("Bamboozle")
              ])),
              ListSurvivorPerkWMatchBalance(List.of([]))
          ),
          ManiacWMatchBalance(
              "Wraith",
              1,
              1,
              ListMapsWMatchBalance(List.of([
                const MapsWMatchBalance("Chapel"),
                const MapsWMatchBalance("StoreHouse"),
                const MapsWMatchBalance("Gas Station"),
                const MapsWMatchBalance("Scrapyard"),
                const MapsWMatchBalance("Coal Tower"),
              ])),
              ListManiacPerkWMatchBalance(List.of([
                const ManiacPerkWMatchBalance("Brutal Strength"),
              ])),
              ListSurvivorPerkWMatchBalance(List.of([
                const SurvivorPerkWMatchBalance("Sprint Burst"),
                const SurvivorPerkWMatchBalance("Lithe")
              ]))
          ),
          ManiacWMatchBalance(
              "Doctor",
              1,
              2,
              ListMapsWMatchBalance(List.of([
                const MapsWMatchBalance("Chapel"),
                const MapsWMatchBalance("Coal Tower"),
                const MapsWMatchBalance("StoreHouse"),
                const MapsWMatchBalance("Gas Station"),
                const MapsWMatchBalance("Scrapyard")
              ])),
              ListManiacPerkWMatchBalance(List.of([
                const ManiacPerkWMatchBalance("Brutal Strength"),
                const ManiacPerkWMatchBalance("Bamboozle")
              ])),
              ListSurvivorPerkWMatchBalance(List.of([
                const SurvivorPerkWMatchBalance("Sprint Burst"),
                const SurvivorPerkWMatchBalance("Lithe")
              ]))
          ),
          ManiacWMatchBalance(
              "Mastermind",
              1,
              1,
              ListMapsWMatchBalance(List.of([
                const MapsWMatchBalance("StoreHouse"),
                const MapsWMatchBalance("Gas Station"),
                const MapsWMatchBalance("Scrapyard")
              ])),
              ListManiacPerkWMatchBalance(List.of([
                const ManiacPerkWMatchBalance("Brutal Strength"),
                const ManiacPerkWMatchBalance("Bamboozle")
              ])),
              ListSurvivorPerkWMatchBalance(List.of([
                const SurvivorPerkWMatchBalance("Sprint Burst"),
                const SurvivorPerkWMatchBalance("Lithe")
              ]))
          ),
        ])));
    _updateEEMatchBalanceEEFromMatchBalanceEEParameterTempCacheService
        .updateMatchBalanceFromMatchBalanceParameterTempCacheService(matchBalance.getClone);
    _updateEEMatchBalanceEEWhereItsLikeMutableEEFromMatchBalanceEEParameterTempCacheService
        .updateMatchBalanceWhereItsLikeMutableFromMatchBalanceParameterTempCacheService(matchBalance.getClone);
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  Future<String> _firstQQInitQQGetIntsWhereSeasonNumberBySeasonParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }
}