import 'dart:async';
import 'dart:io';
import 'package:common_topdbd/model/ban_maniac_w_matches/list_ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/debut_w_matches/debut_w_matches.dart';
import 'package:common_topdbd/model/debut_w_matches/enum_stage_named.dart';
import 'package:common_topdbd/model/endgame_w_matches/endgame_w_matches.dart';
import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/matches/list_matches.dart';
import 'package:common_topdbd/model/matches/matches.dart';
import 'package:common_topdbd/model/middlegame_w_matches/middlegame_w_matches.dart';
import 'package:common_topdbd/model/perk/perk.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/list_pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/round_w_matches/list_round_w_matches.dart';
import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

void main() {
  UpdateEEMatchesEEFromMatchesEEParameterTempCacheService()
      .updateMatchesFromMatchesParameterTempCacheService(ReadyDataUtility.getMatchesWhereUsingGetStrings);
  UpdateEEStringsEEWhereUniqueIdByUserEEFromStringsEEParameterTempCacheService()
      .updateStringsWhereUniqueIdByUserFromStringsParameterTempCacheService(ReadyDataUtility.getStrings);
}

@immutable
final class ReadyDataUtility {
  const ReadyDataUtility._();

  static Matches get getMatchesWhereUsingGetStrings {
    return Matches(
        "409419d6-4fb0-11ee-be56-0242ac120002",
        DateTime.now(),
        "",
        getStrings.field,
        "EnemyUser 5f8cd3aa-4fb0-11ee-be56-0242ac120002",
        DebutWMatches(
            false,
            EnumStageNamed.banManiac.name,
            MatchBalance(1,3,ListManiacWMatchBalance([
              ManiacWMatchBalance(
                  const Maniac("Anna","assets/icon/dbd/maniac/maniac_anna.png"),
                  1,
                  1,
                  const ListMaps([
                    Maps("Chapel","assets/icon/dbd/maps/maps_asy_chapel.png"),
                    Maps("Coal Tower","assets/icon/dbd/maps/maps_ind_coal_tower.png"),
                    Maps("Mine","assets/icon/dbd/maps/maps_ind_mine.png"),
                  ]),
                  ListManiacPerk([
                    ManiacPerk(const Perk("Brutal strength", "")),
                    ManiacPerk(const Perk("Raffle", ""))
                  ]),
                  ListSurvivorPerk([
                    SurvivorPerk(const Perk("Sprint","")),
                  ])
              ),
              ManiacWMatchBalance(
                  const Maniac("Bilyas", "assets/icon/dbd/maniac/maniac_bilyas.png"),
                  1,
                  1,
                  const ListMaps([
                    Maps("Chapel","assets/icon/dbd/maps/maps_asy_chapel.png"),
                    Maps("Coal Tower","assets/icon/dbd/maps/maps_ind_coal_tower.png"),
                    Maps("Mine","assets/icon/dbd/maps/maps_ind_mine.png"),
                  ]),
                  ListManiacPerk([
                    ManiacPerk(const Perk("Brutal strength", "")),
                    ManiacPerk(const Perk("Raffle", ""))
                  ]),
                  ListSurvivorPerk([
                    SurvivorPerk(const Perk("Sprint","")),
                  ])
              ),
              ManiacWMatchBalance(
                  const Maniac("Bubba", "assets/icon/dbd/maniac/maniac_bubba.png"),
                  0,
                  1,
                  const ListMaps([
                    Maps("Chapel","assets/icon/dbd/maps/maps_asy_chapel.png"),
                    Maps("Coal Tower","assets/icon/dbd/maps/maps_ind_coal_tower.png"),
                    Maps("Mine","assets/icon/dbd/maps/maps_ind_mine.png"),
                  ]),
                  const ListManiacPerk([]),
                  ListSurvivorPerk([
                    SurvivorPerk(const Perk("Sprint","")),
                    SurvivorPerk(const Perk("Flexibility",""))
                  ])
              ),
              ManiacWMatchBalance(
                  const Maniac("Trapper", "assets/icon/dbd/maniac/maniac_trapper.png"),
                  2,
                  2,
                  const ListMaps([
                    Maps("Chapel","assets/icon/dbd/maps/maps_asy_chapel.png"),
                    Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"),
                    Maps("Coal Tower","assets/icon/dbd/maps/maps_ind_coal_tower.png"),
                    Maps("Mine","assets/icon/dbd/maps/maps_ind_mine.png"),
                    Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"),
                  ]),
                  ListManiacPerk([
                    ManiacPerk(const Perk("Brutal strength", "")),
                    ManiacPerk(const Perk("Raffle", ""))
                  ]),
                  ListSurvivorPerk([
                    SurvivorPerk(const Perk("Sprint","")),
                    SurvivorPerk(const Perk("Flexibility",""))
                  ])
              ),
              ManiacWMatchBalance(
                  const Maniac("Mor", "assets/icon/dbd/maniac/maniac_mor.png"),
                  0,
                  1,
                  const ListMaps([
                    Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"),
                    Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"),
                    Maps("Scrapyard","assets/icon/dbd/maps/maps_jnk_scrapyard.png")
                  ]),
                  const ListManiacPerk([]),
                  ListSurvivorPerk([
                    SurvivorPerk(const Perk("Sprint","")),
                    SurvivorPerk(const Perk("Flexibility",""))
                  ])
              ),
              ManiacWMatchBalance(
                  const Maniac("Nurse", "assets/icon/dbd/maniac/maniac_nurse.png"),
                  1,
                  0,
                  const ListMaps([
                    Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"),
                    Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"),
                    Maps("Scrapyard","assets/icon/dbd/maps/maps_jnk_scrapyard.png")
                  ]),
                  ListManiacPerk([
                    ManiacPerk(const Perk("Brutal strength", "")),
                    ManiacPerk(const Perk("Raffle", ""))
                  ]),
                  const ListSurvivorPerk([])
              ),
              ManiacWMatchBalance(
                  const Maniac("Kolya", "assets/icon/dbd/maniac/maniac_kolya.png"),
                  1,
                  1,
                  const ListMaps([
                    Maps("Chapel","assets/icon/dbd/maps/maps_asy_chapel.png"),
                    Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"),
                    Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"),
                    Maps("Scrapyard","assets/icon/dbd/maps/maps_jnk_scrapyard.png"),
                    Maps("Coal Tower","assets/icon/dbd/maps/maps_ind_coal_tower.png"),
                  ]),
                  ListManiacPerk([
                    ManiacPerk(const Perk("Brutal strength", "")),
                  ]),
                  ListSurvivorPerk([
                    SurvivorPerk(const Perk("Sprint","")),
                    SurvivorPerk(const Perk("Flexibility",""))
                  ])
              ),
              ManiacWMatchBalance(
                  const Maniac("Doctor", "assets/icon/dbd/maniac/maniac_doctor.png"),
                  1,
                  2,
                  const ListMaps([
                    Maps("Chapel","assets/icon/dbd/maps/maps_asy_chapel.png"),
                    Maps("Coal Tower","assets/icon/dbd/maps/maps_ind_coal_tower.png"),
                    Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"),
                    Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"),
                    Maps("Scrapyard","assets/icon/dbd/maps/maps_jnk_scrapyard.png")
                  ]),
                  ListManiacPerk([
                    ManiacPerk(const Perk("Brutal strength", "")),
                    ManiacPerk(const Perk("Raffle", ""))
                  ]),
                  ListSurvivorPerk([
                    SurvivorPerk(const Perk("Sprint","")),
                    SurvivorPerk(const Perk("Flexibility",""))
                  ])
              ),
              ManiacWMatchBalance(
                  const Maniac("Vesker", "assets/icon/dbd/maniac/maniac_vesker.png"),
                  1,
                  1,
                  const ListMaps([
                    Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"),
                    Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"),
                    Maps("Scrapyard","assets/icon/dbd/maps/maps_jnk_scrapyard.png")
                  ]),
                  ListManiacPerk([
                    ManiacPerk(const Perk("Brutal strength", "")),
                    ManiacPerk(const Perk("Raffle", ""))
                  ]),
                  ListSurvivorPerk([
                    SurvivorPerk(const Perk("Sprint","")),
                    SurvivorPerk(const Perk("Flexibility",""))
                  ])
              ),
            ])),
          false,
          ListBanManiacWMatches(List.empty(growable: true)),
          ListPickManiacWMatches(List.empty(growable: true))
        ),
        MiddlegameWMatches(false,ListRoundWMatches(List.empty(growable: true))),
        EndgameWMatches(false,0,0)
    );
  }

  static Strings get getStrings {
    return Strings("MyUser 51d1a9f2-4fb0-11ee-be56-0242ac120002");
  }
}

@immutable
final class KeysTempCacheServiceUtility {
  /* Matches */
  static const String matches = "matches";
  /* Strings */
  static const String stringsQQUniqueIdByUser = "stringsQQUniqueIdByUser";

  const KeysTempCacheServiceUtility._();
}

@immutable
final class KeysExceptionUtility {
  /* UNKNOWN */
  static const String uNKNOWN = "uNKNOWN";

  const KeysExceptionUtility._();
}

@immutable
final class KeysSuccessUtility {
  /* SUCCESS */
  static const String sUCCESS = "sUCCESS";

  const KeysSuccessUtility._();
}

base class StartListeningAndCancelListeningEEMatchesEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription<T extends Matches, Y extends ListMatches<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListeningMatchesFromCallbackParametersTempCacheServiceAndStreamSubscription(Function(Result<T>) callback) {
    streamSubscription = tempCacheService
        .getStreamFromKeyTempCacheParameterOne(KeysTempCacheServiceUtility.matches)
        .listen((event) {
          callback(Result.success(event as T));
        });
  }

  void cancelListeningMatchesParameterStreamSubscription() {
    streamSubscription?.cancel();
  }
}

@immutable
base class GetEEMatchesEEParameterTempCacheService<T extends Matches,Y extends ListMatches<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<T> getMatchesParameterTempCacheService() {
    try {
      final matches = tempCacheService.getFromKeyTempCacheParameterTempCache(KeysTempCacheServiceUtility.matches) as T;
      return Result<T>.success(matches);
    } on LocalException catch(e) {
      return Result<T>.exception(e);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}

@immutable
base class UpdateEEMatchesEEFromMatchesEEParameterTempCacheService<T extends Matches,Y extends ListMatches<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<bool> updateMatchesFromMatchesParameterTempCacheService(T matches) {
    try {
      tempCacheService.updateWhereStreamNotificationIsPossibleFromKeyTempCacheAndValueParametersTwo(KeysTempCacheServiceUtility.matches,matches);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}

@immutable
base class GetEEStringsEEWhereUniqueIdByUserEEParameterTempCacheService<T extends Strings,Y extends ListStrings<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<T> getStringsWhereUniqueIdByUserParameterTempCacheService() {
    try {
      final strings = tempCacheService.getFromKeyTempCacheParameterTempCache(KeysTempCacheServiceUtility.stringsQQUniqueIdByUser) as T;
      return Result<T>.success(strings);
    } on LocalException catch(e) {
      return Result<T>.exception(e);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}

@immutable
base class UpdateEEStringsEEWhereUniqueIdByUserEEFromStringsEEParameterTempCacheService<T extends Strings,Y extends ListStrings<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<bool> updateStringsWhereUniqueIdByUserFromStringsParameterTempCacheService(T strings) {
    try {
      tempCacheService.updateWhereStreamNotificationIsPossibleFromKeyTempCacheAndValueParametersTwo(KeysTempCacheServiceUtility.stringsQQUniqueIdByUser,strings);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}

final class DataForThreeStagesOfTheMatchView extends BaseDataForNamed<EnumDataForThreeStagesOfTheMatchView> {
  Matches matches;
  String uniqueIdByUser;

  DataForThreeStagesOfTheMatchView(super.isLoading,this.matches,this.uniqueIdByUser);

  @override
  EnumDataForThreeStagesOfTheMatchView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForThreeStagesOfTheMatchView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForThreeStagesOfTheMatchView.exception;
    }
    if(matches.isWhereFalseAndEqualsFromOneParametersDebutWMatchesAndFirstUniqueIdByUser(uniqueIdByUser)) {
      return EnumDataForThreeStagesOfTheMatchView.firstUniqueIdByUserWDebutWMatches;
    }
    if(matches.isWhereFalseAndEqualsFromOneParametersMiddlegameWMatchesAndFirstUniqueIdByUser(uniqueIdByUser)) {
      return EnumDataForThreeStagesOfTheMatchView.firstUniqueIdByUserWMiddlegameWMatches;
    }
    if(matches.isWhereFalseAndEqualsFromOneParametersEndgameWMatchesAndFirstUniqueIdByUser(uniqueIdByUser)) {
      return EnumDataForThreeStagesOfTheMatchView.firstUniqueIdByUserWEndgameWMatches;
    }
    if(matches.isWhereFalseAndEqualsFromOneParametersDebutWMatchesAndSecondUniqueIdByUser(uniqueIdByUser)) {
      return EnumDataForThreeStagesOfTheMatchView.secondUniqueIdByUserWDebutWMatches;
    }
    if(matches.isWhereFalseAndEqualsFromOneParametersMiddlegameWMatchesAndSecondUniqueIdByUser(uniqueIdByUser)) {
      return EnumDataForThreeStagesOfTheMatchView.secondUniqueIdByUserWMiddlegameWMatches;
    }
    if(matches.isWhereFalseAndEqualsFromOneParametersEndgameWMatchesAndSecondUniqueIdByUser(uniqueIdByUser)) {
      return EnumDataForThreeStagesOfTheMatchView.secondUniqueIdByUserWEndgameWMatches;
    }
    return EnumDataForThreeStagesOfTheMatchView.finishedThreeStages;
  }
}

enum EnumDataForThreeStagesOfTheMatchView {
  isLoading,
  exception,
  firstUniqueIdByUserWDebutWMatches,
  firstUniqueIdByUserWMiddlegameWMatches,
  firstUniqueIdByUserWEndgameWMatches,
  secondUniqueIdByUserWDebutWMatches,
  secondUniqueIdByUserWMiddlegameWMatches,
  secondUniqueIdByUserWEndgameWMatches,
  finishedThreeStages
}

final class ThreeStagesOfTheMatchViewModel extends BaseNamedViewModel<DataForThreeStagesOfTheMatchView,DefaultStreamWState<DataForThreeStagesOfTheMatchView>> {
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEMatchesEEParameterTempCacheService =
  GetEEMatchesEEParameterTempCacheService();
  final _getEEStringsEEWhereUniqueIdByUserEEParameterTempCacheService =
  GetEEStringsEEWhereUniqueIdByUserEEParameterTempCacheService();
  final _startListeningAndCancelListeningEEMatchesEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEMatchesEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription();

  // NamedUtility

  ThreeStagesOfTheMatchViewModel() : super(DefaultStreamWState(DataForThreeStagesOfTheMatchView(
    true,
    Matches(
        "",
        DateTime.now(),
        "",
        "",
        "",
        DebutWMatches(
          false,
          "",
          MatchBalance(0,0,ListManiacWMatchBalance(List.empty(growable: true))),
          false,
          ListBanManiacWMatches(List.empty(growable: true)),
          ListPickManiacWMatches(List.empty(growable: true)),
        ),
        MiddlegameWMatches(
            false,
            ListRoundWMatches(List.empty(growable: true))
        ),
        EndgameWMatches(false,0,0)
    ),
    "",
  )));

  @override
  void dispose() {
    super.dispose();
    _startListeningAndCancelListeningEEMatchesEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .cancelListeningMatchesParameterStreamSubscription();
  }

  void listeningStreamsTempCacheService() {
    _startListeningAndCancelListeningEEMatchesEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .startListeningMatchesFromCallbackParametersTempCacheServiceAndStreamSubscription((Result<Matches> resultMatches) {
          getDataForNamedParameterNamedStreamWState.matches = resultMatches.parameter!.getClone;
          notifyStreamDataForNamedParameterNamedStreamWState();
        });
  }

  @override
  Future<String> init() async {
    final getMatchesParameterTempCacheService = _getEEMatchesEEParameterTempCacheService
        .getMatchesParameterTempCacheService();
    if(getMatchesParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetMatchesParameterTempCacheService(getMatchesParameterTempCacheService);
    }
    final getStringsWhereUniqueIdByUserParameterTempCacheService = _getEEStringsEEWhereUniqueIdByUserEEParameterTempCacheService
        .getStringsWhereUniqueIdByUserParameterTempCacheService();
    if(getStringsWhereUniqueIdByUserParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetStringsWhereUniqueIdByUserParameterTempCacheService(getStringsWhereUniqueIdByUserParameterTempCacheService);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.matches = getMatchesParameterTempCacheService.parameter!.getClone;
    getDataForNamedParameterNamedStreamWState.uniqueIdByUser = getStringsWhereUniqueIdByUserParameterTempCacheService.parameter?.field ?? "";
    return KeysSuccessUtility.sUCCESS;
  }

  Future<String> _firstQQInitQQGetMatchesParameterTempCacheService(Result<Matches> getMatchesParameterTempCacheService) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = getMatchesParameterTempCacheService.exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQQInitQQGetStringsWhereUniqueIdByUserParameterTempCacheService(Result<Strings> getStringsWhereUniqueIdByUserParameterTempCacheService) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = getStringsWhereUniqueIdByUserParameterTempCacheService.exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }
}

final class ThreeStagesOfTheMatchView {
  late final ThreeStagesOfTheMatchViewModel _threeStagesOfTheMatchViewModel;

  ThreeStagesOfTheMatchView() {
    initState();
    build();
  }

  // Override
  void initState() {
    _threeStagesOfTheMatchViewModel = ThreeStagesOfTheMatchViewModel();
    _initParameterThreeStagesOfTheMatchViewModel();
  }

  // Override
  void dispose() {
    _threeStagesOfTheMatchViewModel.dispose();
  }

  // Override
  void build() {
    final dataForNamedParameterNamedStreamWState =
        _threeStagesOfTheMatchViewModel.getDataForNamedParameterNamedStreamWState;
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForThreeStagesOfTheMatchView.isLoading:
        debugPrint("Build: IsLoading");
        break;
      case EnumDataForThreeStagesOfTheMatchView.exception:
        debugPrint(
            "Build: Exception(${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException})");
        break;
      case EnumDataForThreeStagesOfTheMatchView.firstUniqueIdByUserWDebutWMatches:
        final firstUniqueIdByUserWDebutWMatchesView = FirstUniqueIdByUserWDebutWMatchesView();
        firstUniqueIdByUserWDebutWMatchesView.initState();
        firstUniqueIdByUserWDebutWMatchesView.build();
        break;
      case EnumDataForThreeStagesOfTheMatchView.firstUniqueIdByUserWMiddlegameWMatches:
        // TODO: Handle this case.
      case EnumDataForThreeStagesOfTheMatchView.firstUniqueIdByUserWEndgameWMatches:
        // TODO: Handle this case.
      case EnumDataForThreeStagesOfTheMatchView.secondUniqueIdByUserWDebutWMatches:
        break;
      case EnumDataForThreeStagesOfTheMatchView.secondUniqueIdByUserWMiddlegameWMatches:
        break;
      case EnumDataForThreeStagesOfTheMatchView.secondUniqueIdByUserWEndgameWMatches:
        break;
      case EnumDataForThreeStagesOfTheMatchView.finishedThreeStages:
        debugPrint("Build: Finished Match");
        break;
      default:
        break;
    }
  }

  Future<void> _initParameterThreeStagesOfTheMatchViewModel() async {
    _threeStagesOfTheMatchViewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          build();
        });
    _threeStagesOfTheMatchViewModel.listeningStreamsTempCacheService();
    final result = await _threeStagesOfTheMatchViewModel.init();
    debugPrint("MainView: $result");
    _threeStagesOfTheMatchViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}

final class DataForFirstUniqueIdByUserWDebutWMatchesView extends BaseDataForNamed<EnumDataForFirstUniqueIdByUserWDebutWMatchesView> {
  Matches matches;

  DataForFirstUniqueIdByUserWDebutWMatchesView(super.isLoading,this.matches);

  @override
  EnumDataForFirstUniqueIdByUserWDebutWMatchesView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.exception;
    }
    if(matches
        .debutWMatches
        .isWhereTrueAndEqualsBanManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsBanManiac;
    }
    if(matches
        .debutWMatches
        .isWhereTrueAndEqualsPickManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsPickManiac;
    }
    if(matches
        .debutWMatches
        .isWhereTrueAndEqualsBanMapsToManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsBansMapsToManiac;
    }
    if(matches
        .debutWMatches
        .isWhereTrueAndEqualsSystemPickMapsToManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsSystemPickMapsToManiac;
    }
    if(matches
        .debutWMatches
        .isWhereTrueAndEqualsPickManiacPerkToManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsPickManiacPerkToManiac;
    }
    if(matches
        .debutWMatches
        .isWhereTrueAndEqualsPickSurvivorPerkToManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsPickSurvivorPerkToManiac;
    }
    if(matches
        .debutWMatches
        .isWhereTrueAndEqualsSystemPickManiacPerkToManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsSystemPickManiacPerkToManiac;
    }
    if(matches
        .debutWMatches
        .isWhereTrueAndEqualsSystemPickSurvivorPerkToManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsSystemPickSurvivorPerkToManiac;
    }
    if(matches
        .debutWMatches
        .isWhereTrueAndEqualsSystemPickManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsSystemPickManiac;
    }
    if(matches
        .debutWMatches
        .isWhereFalseAndEqualsBanManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsBanManiac;
    }
    if(matches
        .debutWMatches
        .isWhereFalseAndEqualsPickManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsPickManiac;
    }
    if(matches
        .debutWMatches
        .isWhereFalseAndEqualsBanMapsToManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsBansMapsToManiac;
    }
    if(matches
        .debutWMatches
        .isWhereFalseAndEqualsSystemPickMapsToManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsSystemPickMapsToManiac;
    }
    if(matches
        .debutWMatches
        .isWhereFalseAndEqualsPickManiacPerkToManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsPickManiacPerkToManiac;
    }
    if(matches
        .debutWMatches
        .isWhereFalseAndEqualsPickSurvivorPerkToManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsPickSurvivorPerkToManiac;
    }
    if(matches
        .debutWMatches
        .isWhereFalseAndEqualsSystemPickManiacPerkToManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsSystemPickManiacPerkToManiac;
    }
    if(matches
        .debutWMatches
        .isWhereFalseAndEqualsSystemPickSurvivorPerkToManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsSystemPickSurvivorPerkToManiac;
    }
    if(matches
        .debutWMatches
        .isWhereFalseAndEqualsSystemPickManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsSystemPickManiac;
    }
    return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.isCompleted;
  }
}

enum EnumDataForFirstUniqueIdByUserWDebutWMatchesView {
  isLoading,
  exception,
  myTurnsBanManiac,
  myTurnsPickManiac,
  myTurnsBansMapsToManiac,
  myTurnsSystemPickMapsToManiac,
  myTurnsPickManiacPerkToManiac,
  myTurnsPickSurvivorPerkToManiac,
  myTurnsSystemPickManiacPerkToManiac,
  myTurnsSystemPickSurvivorPerkToManiac,
  myTurnsSystemPickManiac,
  enemyTurnsBanManiac,
  enemyTurnsPickManiac,
  enemyTurnsBansMapsToManiac,
  enemyTurnsSystemPickMapsToManiac,
  enemyTurnsPickManiacPerkToManiac,
  enemyTurnsPickSurvivorPerkToManiac,
  enemyTurnsSystemPickManiacPerkToManiac,
  enemyTurnsSystemPickSurvivorPerkToManiac,
  enemyTurnsSystemPickManiac,
  isCompleted
}

final class FirstUniqueIdByUserWDebutWMatchesViewModel extends BaseNamedViewModel<DataForFirstUniqueIdByUserWDebutWMatchesView,DefaultStreamWState<DataForFirstUniqueIdByUserWDebutWMatchesView>> {
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEMatchesEEParameterTempCacheService =
  GetEEMatchesEEParameterTempCacheService();
  final _updateEEMatchesEEFromMatchesEEParameterTempCacheService =
  UpdateEEMatchesEEFromMatchesEEParameterTempCacheService();

  // NamedUtility

  FirstUniqueIdByUserWDebutWMatchesViewModel() : super(DefaultStreamWState(DataForFirstUniqueIdByUserWDebutWMatchesView(
    true,
    Matches(
        "",
        DateTime.now(),
        "",
        "",
        "",
        DebutWMatches(
          false,
          "",
          MatchBalance(0,0,ListManiacWMatchBalance(List.empty(growable: true))),
          false,
          ListBanManiacWMatches(List.empty(growable: true)),
          ListPickManiacWMatches(List.empty(growable: true)),
        ),
        MiddlegameWMatches(
            false,
            ListRoundWMatches(List.empty(growable: true))
        ),
        EndgameWMatches(false,0,0)
    ),
  )));

  @override
  Future<String> init() async {
    final getMatchesParameterTempCacheService = _getEEMatchesEEParameterTempCacheService
        .getMatchesParameterTempCacheService();
    if(getMatchesParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetMatchesParameterTempCacheService(getMatchesParameterTempCacheService);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.matches = getMatchesParameterTempCacheService.parameter!.getClone;
    return KeysSuccessUtility.sUCCESS;
  }

  void myTurnsBanManiac(int index) {
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    final itemManiacWMatchBalanceWhereNotBannedAndPickedParametersThree = matches
        .debutWMatches
        .getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree[index];
    matches
        .insertBanManiacWMatchesFromNameParametersDebutWMatchesAndFirstUniqueIdByUser(itemManiacWMatchBalanceWhereNotBannedAndPickedParametersThree.maniac.name);
    final textLogAction = matches.textLogAction.isNotEmpty
        ? "${matches.textLogAction}\nUser: '${matches.firstUniqueIdByUser}' banned maniac '${itemManiacWMatchBalanceWhereNotBannedAndPickedParametersThree.maniac.name}'"
        : "User: '${matches.firstUniqueIdByUser}' banned maniac '${itemManiacWMatchBalanceWhereNotBannedAndPickedParametersThree.maniac.name}'";
    final isWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance();
    if(isWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance) {
      _firstQQMyTurnsBanManiacQQIsWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance(matches,textLogAction);
      return;
    }
    final isWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance();
    if(isWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance) {
      _firstQQMyTurnsBanManiacQQIsWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance(matches,textLogAction);
      return;
    }
    final newMatchesFromThree = matches
        .getNewMatchesFromThree(textLogAction,false,EnumStageNamed.banManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(newMatchesFromThree);
  }

  void myTurnsPickManiac(int index) {
    final matches = getDataForNamedParameterNamedStreamWState
        .matches;
    final itemManiacWMatchBalanceWhereNotBannedAndPickedParametersThree = matches
        .debutWMatches
        .getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree[index];
    matches
        .insertPickManiacWMatchesFromNameParametersDebutWMatchesAndFirstUniqueIdByUser(itemManiacWMatchBalanceWhereNotBannedAndPickedParametersThree.maniac.name);
    final textLogAction = "${matches.textLogAction}\nUser: '${matches.firstUniqueIdByUser}' picked maniac '${itemManiacWMatchBalanceWhereNotBannedAndPickedParametersThree.maniac.name}'";
    final newMatchesFromThree = matches
        .getNewMatchesFromThree(textLogAction,false,EnumStageNamed.bansMapsToManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(newMatchesFromThree);
  }

  Future<String> _firstQQInitQQGetMatchesParameterTempCacheService(Result<Matches> getMatchesParameterTempCacheService) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = getMatchesParameterTempCacheService.exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }

  void _firstQQMyTurnsBanManiacQQIsWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance(Matches matches,String textLogAction) {
    final newMatchesFromThree = matches
        .getNewMatchesFromThree(textLogAction,false,EnumStageNamed.pickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(newMatchesFromThree);
  }

  void _firstQQMyTurnsBanManiacQQIsWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance(Matches matches,String textLogAction) {
    final newMatchesFromThree = matches
        .getNewMatchesFromThree(textLogAction,false,EnumStageNamed.systemPickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(newMatchesFromThree);
  }
}

final class FirstUniqueIdByUserWDebutWMatchesView {
  late final FirstUniqueIdByUserWDebutWMatchesViewModel _firstUniqueIdByUserWDebutWMatchesViewModel;

  // Override
  void initState() {
    _firstUniqueIdByUserWDebutWMatchesViewModel = FirstUniqueIdByUserWDebutWMatchesViewModel();
    _initParameterFirstUniqueIdByUserWDebutWMatchesViewModel();
  }

  // Override
  void dispose() {
    _firstUniqueIdByUserWDebutWMatchesViewModel.dispose();
  }

  // Override
  void build() {
    final dataForNamedParameterNamedStreamWState =
        _firstUniqueIdByUserWDebutWMatchesViewModel.getDataForNamedParameterNamedStreamWState;
    switch (dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.isLoading:
        debugPrint("Build: IsLoading");
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.exception:
        debugPrint("Build: Exception(${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException})");
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsBanManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("ListPickManiacWMatchesWFirstUniqueIdByUser: ${matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser}");
        debugPrint("ListPickManiacWMatchesWSecondUniqueIdByUser: ${matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser}");
        debugPrint("ListBanManiacWMatchesWFirstUniqueIdByUser: ${matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser}");
        debugPrint("ListBanManiacWMatchesWSecondUniqueIdByUser: ${matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser}");
        debugPrint("ListManiacWMatchBalance: ${matches.debutWMatches.getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree}");
        debugPrint("You turns Ban Maniac (index): ");
        final input = stdin.readLineSync();
        final parse = int.parse(input ?? "0");
        _firstUniqueIdByUserWDebutWMatchesViewModel.myTurnsBanManiac(parse);
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsPickManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("ListPickManiacWMatchesWFirstUniqueIdByUser: ${matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser}");
        debugPrint("ListPickManiacWMatchesWSecondUniqueIdByUser: ${matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser}");
        debugPrint("ListBanManiacWMatchesWFirstUniqueIdByUser: ${matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser}");
        debugPrint("ListBanManiacWMatchesWSecondUniqueIdByUser: ${matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser}");
        debugPrint("ListManiacWMatchBalance: ${matches.debutWMatches.getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree}");
        debugPrint("You turns Pick Maniac (index): ");
        final input = stdin.readLineSync();
        final parse = int.parse(input ?? "0");
        _firstUniqueIdByUserWDebutWMatchesViewModel.myTurnsPickManiac(parse);
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsBansMapsToManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("LastItemPickManiacWMatches: ${matches.debutWMatches.listPickManiacWMatches.listModel.last}");
        debugPrint("ListMapsWhereNotBannedMapsWLastItemPickManiacWMatches: ${matches.debutWMatches.getListMapsWhereNotBannedMapsAndLastItemParameterListPickManiacWMatches}");
        final input = stdin.readLineSync();
        final parse = int.parse(input ?? "0");

        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsSystemPickMapsToManiac:
        // TODO: Handle this case.
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsPickManiacPerkToManiac:
        // TODO: Handle this case.
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsPickSurvivorPerkToManiac:
        // TODO: Handle this case.
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsSystemPickManiacPerkToManiac:
        // TODO: Handle this case.
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsSystemPickSurvivorPerkToManiac:
        // TODO: Handle this case.
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsSystemPickManiac:
        // TODO: Handle this case.
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsBanManiac:
        // TODO: Handle this case.
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsPickManiac:
        // TODO: Handle this case.
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsBansMapsToManiac:
        // TODO: Handle this case.
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsSystemPickMapsToManiac:
        // TODO: Handle this case
      default:
        break;
    }
  }

  Future<void> _initParameterFirstUniqueIdByUserWDebutWMatchesViewModel() async {
    _firstUniqueIdByUserWDebutWMatchesViewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          build();
        });
    final result = await _firstUniqueIdByUserWDebutWMatchesViewModel.init();
    debugPrint("FirstUniqueIdByUserWDebutWMatchesView: $result");
    _firstUniqueIdByUserWDebutWMatchesViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}