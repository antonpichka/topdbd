import 'dart:async';
import 'dart:io';
import 'package:common_topdbd/model/ban_maniac_w_matches/list_ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/debut_w_matches/debut_w_matches.dart';
import 'package:common_topdbd/model/debut_w_matches/enum_stage_named.dart';
import 'package:common_topdbd/model/endgame_w_matches/endgame_w_matches.dart';
import 'package:common_topdbd/model/maniac_perk_w_match_balance/list_maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_perk_w_match_balance/maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/list_maps_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/maps_w_match_balance.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/matches/list_matches.dart';
import 'package:common_topdbd/model/matches/matches.dart';
import 'package:common_topdbd/model/middlegame_w_matches/middlegame_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/list_pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/round_w_matches/list_round_w_matches.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/list_survivor_perk_w_match_balance.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/survivor_perk_w_match_balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

void main() {
  UpdateEEMatchesEEFromMatchesEEParameterTempCacheService()
      .updateMatchesFromMatchesParameterTempCacheService(ReadyDataUtility.getMatchesWhereUsingGetWUniqueIdByUser);
  UpdateEEStringsEEWhereUniqueIdByUserEEFromStringsEEParameterTempCacheService()
      .updateStringsWhereUniqueIdByUserFromStringsParameterTempCacheService(ReadyDataUtility.getWhereUniqueIByUser);
}

@immutable
final class ReadyDataUtility {
  const ReadyDataUtility._();

  static Matches get getMatchesWhereUsingGetWUniqueIdByUser {
    return Matches(
        "409419d6-4fb0-11ee-be56-0242ac120002",
        DateTime.now(),
        "",
        getWhereUniqueIByUser.field,
        "EnemyUser 5f8cd3aa-4fb0-11ee-be56-0242ac120002",
        DebutWMatches(
            false,
            EnumStageNamed.banManiac.name,
            const MatchBalance(1,3,ListManiacWMatchBalance([
              ManiacWMatchBalance(
                  "Anna",
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
             ManiacWMatchBalance(
                  "Bilyas",
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
              ManiacWMatchBalance(
                  "Bubba",
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
              ManiacWMatchBalance(
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
              ManiacWMatchBalance(
                  "Mor",
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
              ManiacWMatchBalance(
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
              ManiacWMatchBalance(
                  "Kolya",
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
              ManiacWMatchBalance(
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
              ManiacWMatchBalance(
                  "Vesker",
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
            ])),
          false,
          ListBanManiacWMatches(List.empty(growable: true)),
          ListPickManiacWMatches(List.empty(growable: true))
        ),
        MiddlegameWMatches(false,ListRoundWMatches(List.empty(growable: true))),
        EndgameWMatches(false,0,0)
    );
  }

  static Strings get getWhereUniqueIByUser {
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
        .isWhereTrueAndEqualsBanMapsToPickedManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsBansMapsToPickedManiac;
    }
    if(matches
        .debutWMatches
        .isWhereEqualsSystemPickMapsToPickedManiacParameterEnumStageNamed())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.systemPickMapsToPickedManiac;
    }
    if(matches
        .debutWMatches
        .isWhereTrueAndEqualsPickManiacPerkToPickedManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsPickManiacPerkToPickedManiac;
    }
    if(matches
        .debutWMatches
        .isWhereTrueAndEqualsPickSurvivorPerkToPickedManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsPickSurvivorPerkToPickedManiac;
    }
    if(matches
        .debutWMatches
        .isWhereEqualsSystemPickManiacPerkToPickedManiacParameterEnumStageNamed())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.systemPickManiacPerkToPickedManiac;
    }
    if(matches
        .debutWMatches
        .isWhereEqualsSystemPickSurvivorPerkToPickedManiacParameterEnumStageNamed())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.systemPickSurvivorPerkToPickedManiac;
    }
    if(matches
        .debutWMatches
        .isWhereEqualsSystemPickManiacParameterEnumStageNamed())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.systemPickManiac;
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
        .isWhereFalseAndEqualsBanMapsToPickedManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsBansMapsToPickedManiac;
    }
    if(matches
        .debutWMatches
        .isWhereFalseAndEqualsPickManiacPerkToPickedManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsPickManiacPerkToPickedManiac;
    }
    if(matches
        .debutWMatches
        .isWhereFalseAndEqualsPickSurvivorPerkToPickedManiacParametersTwo())
    {
      return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsPickSurvivorPerkToPickedManiac;
    }
    return EnumDataForFirstUniqueIdByUserWDebutWMatchesView.isCompleted;
  }
}

enum EnumDataForFirstUniqueIdByUserWDebutWMatchesView {
  isLoading,
  exception,
  myTurnsBanManiac,
  myTurnsPickManiac,
  myTurnsBansMapsToPickedManiac,
  systemPickMapsToPickedManiac,
  myTurnsPickManiacPerkToPickedManiac,
  myTurnsPickSurvivorPerkToPickedManiac,
  systemPickManiacPerkToPickedManiac,
  systemPickSurvivorPerkToPickedManiac,
  systemPickManiac,
  enemyTurnsBanManiac,
  enemyTurnsPickManiac,
  enemyTurnsBansMapsToPickedManiac,
  enemyTurnsPickManiacPerkToPickedManiac,
  enemyTurnsPickSurvivorPerkToPickedManiac,
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
    matches
        .insertBanManiacWMatchesFromNameParametersDebutWMatchesAndFirstUniqueIdByUser(index);
    final isWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance();
    if(isWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance) {
      _firstQQMyTurnsBanManiacQQIsWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance(index,matches);
      return;
    }
    final isWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance();
    if(isWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance) {
      _firstQQMyTurnsBanManiacQQIsWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance(index,matches);
      return;
    }
    final matchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThree = matches
        .getMatchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThreeParametersSeven(index,false,EnumStageNamed.banManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThree);
  }

  void myTurnsPickManiac(int index) {
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .insertPickManiacWMatchesFromIndexParametersDebutWMatchesAndFirstUniqueIdByUser(index);
    final matchesWhereNewAndFirstUniqueIdByUserTurnsPickManiacFromThree = matches
        .getMatchesWhereNewAndFirstUniqueIdByUserTurnsPickManiacFromThreeParametersSeven(index,false,EnumStageNamed.bansMapsToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUniqueIdByUserTurnsPickManiacFromThree);
  }

  void myTurnsBanMapsToPickedManiac(int index) {
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromIndexParametersTwo(index);
    final isWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne = matches
        .debutWMatches
        .isWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne();
    if(isWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne) {
      _firstQQMyTurnsBanMapsToPickedManiacQQIsWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne(index,matches);
      return;
    }
    final matchesWhereNewAndMyTurnsBanMapsToPickedManiacFromThree = matches
        .getMatchesWhereNewAndFirstUniqueIdByUserTurnsBanMapsToPickedManiacFromThreeParametersSeven(index,false,EnumStageNamed.bansMapsToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndMyTurnsBanMapsToPickedManiacFromThree);
  }

  Future<void> systemPickMapsToPickedManiac() async {
    await Future.delayed(Duration(seconds: 1));
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .debutWMatches
        .updatePickManiacWMatchesWhereLastItemAndUpdatedPickMapsWMatchesParameterListPickManiacWMatches();
    final isNotEmpty = matches
        .debutWMatches
        .getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo
        .listManiacPerkWMatchBalance
        .listModel
        .isNotEmpty;
    if(isNotEmpty) {
      _firstQQSystemPickMapsToPickedManiacQQIsNotEmpty(matches);
      return;
    }
    final isNotEmptyFIRST = matches
        .debutWMatches
        .getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo
        .listSurvivorPerkWMatchBalance
        .listModel
        .isNotEmpty;
    if(isNotEmptyFIRST) {
      _firstQQSystemPickMapsToPickedManiacQQIsNotEmptyFIRST(matches);
      return;
    }
    final isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance();
    if(isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance) {
      _firstQQSystemPickMapsToPickedManiacQQIsWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance(matches);
      return;
    }
    final isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance();
    if(isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance) {
      _firstQQSystemPickMapsToPickedManiacQQIsWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance(matches);
      return;
    }
    final matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven = matches
        .getMatchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven(EnumStageNamed.pickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven);
  }

  void myTurnsPickManiacPerkToPickedManiac(int index) {
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches.insertPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromIndexParametersTwo(index);
    final isWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo = matches
        .isWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo();
    if(isWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo) {
      _firstQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(index,matches);
      return;
    }
    final matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven(index,true,EnumStageNamed.pickManiacPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven);
  }

  Future<String> _firstQQInitQQGetMatchesParameterTempCacheService(Result<Matches> getMatchesParameterTempCacheService) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = getMatchesParameterTempCacheService.exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }

  void _firstQQMyTurnsBanManiacQQIsWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance(int index,Matches matches) {
    final matchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThree = matches
        .getMatchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThreeParametersSeven(index,false,EnumStageNamed.pickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThree);
  }

  void _firstQQMyTurnsBanManiacQQIsWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance(int index,Matches matches) {
    final matchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThree = matches
        .getMatchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThreeParametersSeven(index,false,EnumStageNamed.systemPickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThree);
  }

  void _firstQQMyTurnsBanMapsToPickedManiacQQIsWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne(int index,Matches matches) {
    final matchesWhereNewAndMyTurnsBanMapsToPickedManiacFromThree = matches
        .getMatchesWhereNewAndFirstUniqueIdByUserTurnsBanMapsToPickedManiacFromThreeParametersSeven(index,false,EnumStageNamed.systemPickMapsToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndMyTurnsBanMapsToPickedManiacFromThree);
  }

  void _firstQQSystemPickMapsToPickedManiacQQIsNotEmpty(Matches matches) {
    final isWhereNotEqualsParametersLengthPickManiacPerkAndListManiacPerkWMatchBalance =  matches
        .debutWMatches
        .getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo
        .isWhereNotEqualsParametersLengthPickManiacPerkAndListManiacPerkWMatchBalance();
    if(isWhereNotEqualsParametersLengthPickManiacPerkAndListManiacPerkWMatchBalance) {
      _firstBranchOneQQSystemPickMapsToPickedManiacQQIsNotEmpty(matches);
      return;
    }
    final matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven = matches
        .getMatchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven(EnumStageNamed.systemPickManiacPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven);
  }

  void _firstBranchOneQQSystemPickMapsToPickedManiacQQIsNotEmpty(Matches matches) {
    final matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven = matches
        .getMatchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven(EnumStageNamed.pickManiacPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven);
  }

  void _firstQQSystemPickMapsToPickedManiacQQIsNotEmptyFIRST(Matches matches) {
    final isWhereNotEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerkWMatchBalance =  matches
        .debutWMatches
        .getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo
        .isWhereNotEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerkWMatchBalance();
    if(isWhereNotEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerkWMatchBalance) {
      _firstBranchOneQQSystemPickMapsToPickedManiacQQIsNotEmptyFIRST(matches);
      return;
    }
    final matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven = matches
        .getMatchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven(EnumStageNamed.systemPickSurvivorPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven);
  }

  void _firstBranchOneQQSystemPickMapsToPickedManiacQQIsNotEmptyFIRST(Matches matches) {
    final matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven = matches
        .getMatchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven(EnumStageNamed.pickSurvivorPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven);
  }

  void _firstQQSystemPickMapsToPickedManiacQQIsWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance(Matches matches) {
    final matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven = matches
        .getMatchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven(EnumStageNamed.banManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven);
  }

  void _firstQQSystemPickMapsToPickedManiacQQIsWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance(Matches matches) {
    final matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven = matches
        .getMatchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven(EnumStageNamed.isCompleted);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven);
  }

  void _firstQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(int index,Matches matches) {
    final isWhereLengthListPickManiacPerkWMatchesNotEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST = matches
        .isWhereLengthListPickManiacPerkWMatchesNotEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST();
    if(isWhereLengthListPickManiacPerkWMatchesNotEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST) {
      _firstBranchOneQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(index,matches);
      return;
    }
    final isWhereNotEmptyAndEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerkWMatchBalance = matches
        .debutWMatches
        .getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo
        .isWhereNotEmptyAndEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerkWMatchBalance();
    if(isWhereNotEmptyAndEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerkWMatchBalance) {
      _firstBranchTwoQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(index,matches);
      return;
    }
    final isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST = matches
        .isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST();
    if(isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST) {
      _firstBranchThreeQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(index,matches);
      return;
    }
    final isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance();
    if(isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance) {
      _firstBranchFourQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(index,matches);
      return;
    }
    final isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance();
    if(isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance) {
      _firstBranchFiveQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(index,matches);
      return;
    }
    final matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven(index,false,EnumStageNamed.pickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven);
  }

  void _firstBranchOneQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(int index,Matches matches) {
    final matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven(index,false,EnumStageNamed.pickManiacPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven);
  }

  void _firstBranchTwoQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(int index, Matches matches) {
    final matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven(index,false,EnumStageNamed.systemPickSurvivorPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven);
  }

  void _firstBranchThreeQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(int index, Matches matches) {
    final matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven(index,false,EnumStageNamed.pickSurvivorPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven);
  }

  void _firstBranchFourQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(int index, Matches matches) {
    final matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven(index,false,EnumStageNamed.banManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven);
  }

  void _firstBranchFiveQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(int index, Matches matches) {
    final matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven(index,false,EnumStageNamed.isCompleted);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven);
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
        debugPrint("You turns ban maniac (index): ");
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
        debugPrint("You turns pick maniac (index): ");
        final input = stdin.readLineSync();
        final parse = int.parse(input ?? "0");
        _firstUniqueIdByUserWDebutWMatchesViewModel.myTurnsPickManiac(parse);
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsBansMapsToPickedManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("LastItemPickManiacWMatches: ${matches.debutWMatches.listPickManiacWMatches.listModel.last}");
        debugPrint("ListMapsWhereNotBannedMapsAndLastItemPickManiacWMatches: ${matches.debutWMatches.getListMapsWMatchBalanceWhereNotBannedMapsAndLastItemParameterListPickManiacWMatches}");
        debugPrint("You turns ban maps to picked maniac (index): ");
        final input = stdin.readLineSync();
        final parse = int.parse(input ?? "0");
        _firstUniqueIdByUserWDebutWMatchesViewModel.myTurnsBanMapsToPickedManiac(parse);
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.systemPickMapsToPickedManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("LastItemPickManiacWMatches: ${matches.debutWMatches.listPickManiacWMatches.listModel.last}");
        debugPrint("ListMapsWhereNotBannedMapsAndLastItemPickManiacWMatches: ${matches.debutWMatches.getListMapsWMatchBalanceWhereNotBannedMapsAndLastItemParameterListPickManiacWMatches}");
        debugPrint("System: Now pick maps to picked maniac");
        /// THIS CODE IS EXECUTED ONLY BY THE FIRST USER
        _firstUniqueIdByUserWDebutWMatchesViewModel.systemPickMapsToPickedManiac();
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsPickManiacPerkToPickedManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("LastItemPickManiacWMatches: ${matches.debutWMatches.listPickManiacWMatches.listModel.last}");
        debugPrint("ListManiacPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatches: ${matches.getListManiacPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwo}");
        debugPrint("You turns pick maniac perk to picked maniac (index): ");
        final input = stdin.readLineSync();
        final parse = int.parse(input ?? "0");
        _firstUniqueIdByUserWDebutWMatchesViewModel.myTurnsPickManiacPerkToPickedManiac(parse);
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsPickSurvivorPerkToPickedManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("LastItemPickManiacWMatches: ${matches.debutWMatches.listPickManiacWMatches.listModel.last}");
        debugPrint("ListSurvivorPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatches: ${matches.getListSurvivorPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwo}");
        /// THERE
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.systemPickManiacPerkToPickedManiac:
        // TODO: Handle this case.
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.systemPickSurvivorPerkToPickedManiac:
        // TODO: Handle this case.
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.systemPickManiac:
        // TODO: Handle this case.
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsBanManiac:
        // TODO: Handle this case.
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsPickManiac:
        // TODO: Handle this case.
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsBansMapsToPickedManiac:
        // TODO: Handle this case.
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsPickManiacPerkToPickedManiac:
        // TODO: Handle this case.
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsPickSurvivorPerkToPickedManiac:
        // TODO: Handle this case.
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