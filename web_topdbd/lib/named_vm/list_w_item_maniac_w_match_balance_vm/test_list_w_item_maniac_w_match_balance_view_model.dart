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
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/list_w_item_maniac_w_match_balance_vm/data_for_list_w_item_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/list_w_item_maniac_w_match_balance_vm/i_list_w_item_maniac_w_match_balance_view_model.dart';

@immutable
final class TestListWItemManiacWMatchBalanceViewModel extends BaseNamedViewModel<DataForListWItemManiacWMatchBalanceView,
    DefaultStreamWState<DataForListWItemManiacWMatchBalanceView>> implements IListWItemManiacWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEIntsEEWhereSeasonNumberBySeasonEEParameterTempCacheService =
  GetEEIntsEEWhereSeasonNumberBySeasonEEParameterTempCacheService();
  final _updateEEMatchBalanceEEFromMatchBalanceEEParameterTempCacheService =
  UpdateEEMatchBalanceEEFromMatchBalanceEEParameterTempCacheService();

  // NamedUtility

  TestListWItemManiacWMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForListWItemManiacWMatchBalanceView(true)));

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
    // getMatchBalanceFromSeasonNumberBySeasonParameterFirebaseFirestoreService
    final matchBalance = MatchBalance(
        getIntsWhereSeasonNumberBySeasonParameterTempCacheService.parameter?.field ?? 0,
        3,
        ListManiacWMatchBalance(List.of([
          const ManiacWMatchBalance(
              "Huntress",
              1,
              1,
              ListMapsWMatchBalance([
                MapsWMatchBalance("Chapel"),
                MapsWMatchBalance("Coal Tower"),
                MapsWMatchBalance("Mine"),
              ]),
              ListManiacPerkWMatchBalance([
                ManiacPerkWMatchBalance("Brutal strength"),
                ManiacPerkWMatchBalance("Raffle")
              ]),
              ListSurvivorPerkWMatchBalance([
                SurvivorPerkWMatchBalance("Sprint"),
              ])
          ),
          const ManiacWMatchBalance(
              "Hillbilly",
              1,
              1,
              ListMapsWMatchBalance([
                MapsWMatchBalance("Chapel"),
                MapsWMatchBalance("Coal Tower"),
                MapsWMatchBalance("Mine"),
              ]),
              ListManiacPerkWMatchBalance([
                ManiacPerkWMatchBalance("Brutal strength"),
                ManiacPerkWMatchBalance("Raffle")
              ]),
              ListSurvivorPerkWMatchBalance([
                SurvivorPerkWMatchBalance("Sprint"),
              ])
          ),
          const ManiacWMatchBalance(
              "Cannibal",
              0,
              1,
              ListMapsWMatchBalance([
                MapsWMatchBalance("Chapel"),
                MapsWMatchBalance("Coal Tower"),
                MapsWMatchBalance("Mine"),
              ]),
              ListManiacPerkWMatchBalance([]),
              ListSurvivorPerkWMatchBalance([
                SurvivorPerkWMatchBalance("Sprint"),
                SurvivorPerkWMatchBalance("Flexibility")
              ])
          ),
          const ManiacWMatchBalance(
              "Trapper",
              2,
              2,
              ListMapsWMatchBalance([
                MapsWMatchBalance("Chapel"),
                MapsWMatchBalance("Gas Station"),
                MapsWMatchBalance("Coal Tower"),
                MapsWMatchBalance("Mine"),
                MapsWMatchBalance("StoreHouse"),
              ]),
              ListManiacPerkWMatchBalance([
                ManiacPerkWMatchBalance("Brutal strength"),
                ManiacPerkWMatchBalance("Raffle")
              ]),
              ListSurvivorPerkWMatchBalance([
                SurvivorPerkWMatchBalance("Sprint"),
                SurvivorPerkWMatchBalance("Flexibility")
              ])
          ),
          const ManiacWMatchBalance(
              "Blight",
              0,
              1,
              ListMapsWMatchBalance([
                MapsWMatchBalance("StoreHouse"),
                MapsWMatchBalance("Gas Station"),
                MapsWMatchBalance("Scrapyard")
              ]),
              ListManiacPerkWMatchBalance([]),
              ListSurvivorPerkWMatchBalance([
                SurvivorPerkWMatchBalance("Sprint"),
                SurvivorPerkWMatchBalance("Flexibility")
              ])
          ),
          const ManiacWMatchBalance(
              "Nurse",
              1,
              0,
              ListMapsWMatchBalance([
                MapsWMatchBalance("StoreHouse"),
                MapsWMatchBalance("Gas Station"),
                MapsWMatchBalance("Scrapyard")
              ]),
              ListManiacPerkWMatchBalance([
                ManiacPerkWMatchBalance("Brutal strength"),
                ManiacPerkWMatchBalance("Raffle")
              ]),
              ListSurvivorPerkWMatchBalance([])
          ),
          const ManiacWMatchBalance(
              "Wraith",
              1,
              1,
              ListMapsWMatchBalance([
                MapsWMatchBalance("Chapel"),
                MapsWMatchBalance("StoreHouse"),
                MapsWMatchBalance("Gas Station"),
                MapsWMatchBalance("Scrapyard"),
                MapsWMatchBalance("Coal Tower"),
              ]),
              ListManiacPerkWMatchBalance([
                ManiacPerkWMatchBalance("Brutal strength"),
              ]),
              ListSurvivorPerkWMatchBalance([
                SurvivorPerkWMatchBalance("Sprint"),
                SurvivorPerkWMatchBalance("Flexibility")
              ])
          ),
          const ManiacWMatchBalance(
              "Doctor",
              1,
              2,
              ListMapsWMatchBalance([
                MapsWMatchBalance("Chapel"),
                MapsWMatchBalance("Coal Tower"),
                MapsWMatchBalance("StoreHouse"),
                MapsWMatchBalance("Gas Station"),
                MapsWMatchBalance("Scrapyard")
              ]),
              ListManiacPerkWMatchBalance([
                ManiacPerkWMatchBalance("Brutal strength"),
                ManiacPerkWMatchBalance("Raffle")
              ]),
              ListSurvivorPerkWMatchBalance([
                SurvivorPerkWMatchBalance("Sprint"),
                SurvivorPerkWMatchBalance("Flexibility")
              ])
          ),
          const ManiacWMatchBalance(
              "Mastermind",
              1,
              1,
              ListMapsWMatchBalance([
                MapsWMatchBalance("StoreHouse"),
                MapsWMatchBalance("Gas Station"),
                MapsWMatchBalance("Scrapyard")
              ]),
              ListManiacPerkWMatchBalance([
                ManiacPerkWMatchBalance("Brutal strength"),
                ManiacPerkWMatchBalance("Raffle")
              ]),
              ListSurvivorPerkWMatchBalance([
                SurvivorPerkWMatchBalance("Sprint"),
                SurvivorPerkWMatchBalance("Flexibility")
              ])
          ),
        ])));
    _updateEEMatchBalanceEEFromMatchBalanceEEParameterTempCacheService
        .updateMatchBalanceFromMatchBalanceParameterTempCacheService(matchBalance);
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  Future<String> _firstQQInitQQGetIntsWhereSeasonNumberBySeasonParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }
}