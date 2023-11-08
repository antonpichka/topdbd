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
import 'package:common_topdbd/model/stats/list_stats.dart';
import 'package:common_topdbd/model/stats/stats.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/list_survivor_perk_w_match_balance.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/survivor_perk_w_match_balance.dart';
import 'package:common_topdbd/named_utility/timer_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

void main() {
  UpdateEEMatchesEEFromMatchesEEParameterTempCacheService()
      .updateMatchesFromMatchesParameterTempCacheService(ReadyDataUtility.getMatchesWhereUsingGetWUniqueIdByUser);
  UpdateEEStringsEEWhereUniqueIdByUserEEFromStringsEEParameterTempCacheService()
      .updateStringsWhereUniqueIdByUserFromStringsParameterTempCacheService(ReadyDataUtility.getStringsWhereUniqueIByUser);
  UpdateEEStatsEEWhereFirstUserEEFromStatsEEParameterTempCacheService()
      .updateStatsWhereFirstUserFromStatsParameterTempCacheService(ReadyDataUtility.getStatsWhereFirstUser);
  UpdateEEStatsEEWhereSecondUserEEFromStatsEEParameterTempCacheService()
      .updateStatsWhereSecondUserFromStatsParameterTempCacheService(ReadyDataUtility.getStatsWhereSecondUser);
  final threeStagesOfTheMatchView = ThreeStagesOfTheMatchView();
  threeStagesOfTheMatchView.initState();
  threeStagesOfTheMatchView.build();
}

@immutable
final class ReadyDataUtility {
  const ReadyDataUtility._();

  static Matches get getMatchesWhereUsingGetWUniqueIdByUser {
    return Matches(
        "409419d6-4fb0-11ee-be56-0242ac120002",
        DateTime.now(),
        "",
        getStringsWhereUniqueIByUser.field,
        "5f8cd3aa-4fb0-11ee-be56-0242ac120002",
        getStringWhereUsernameByModel.field,
        "EnemyUser",
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
        EndgameWMatches(0,0)
    );
  }

  static Strings get getStringsWhereUniqueIByUser {
    return const Strings("51d1a9f2-4fb0-11ee-be56-0242ac120002");
  }

  static Strings get getStringWhereUsernameByModel {
    return const Strings("MyUser");
  }

  static Stats get getStatsWhereFirstUser {
    return Stats(getStringsWhereUniqueIByUser.field,1,0,0,300);
  }

  static Stats get getStatsWhereSecondUser {
    return Stats("5f8cd3aa-4fb0-11ee-be56-0242ac120002",1,0,0,300);
  }
}

@immutable
final class KeysTempCacheServiceUtility {
  /* Matches */
  static const String matches = "matches";
  /* Stats */
  static const String stats = "stats";
  static const String statsFIRST = "statsFIRST";
  /* Strings */
  static const String stringsQQUniqueIdByUser = "stringsQQUniqueIdByUser";
  /* Bools */
  static const String boolsQQIsStopTimer = "boolsQQIsStopTimer";
  /* Ints */
  static const String intsQQElapsedTimeInMilliseconds = "intsQQElapsedTimeInMilliseconds";

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
base class GetEEStatsEEWhereFirstUserEEParameterTempCacheService<T extends Stats,Y extends ListStats<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<T> getStatsWhereFirstUserParameterTempCacheService() {
    try {
      final stats = tempCacheService.getFromKeyTempCacheParameterTempCache(KeysTempCacheServiceUtility.stats) as T;
      return Result<T>.success(stats);
    } on LocalException catch(e) {
      return Result<T>.exception(e);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}

@immutable
base class UpdateEEStatsEEWhereFirstUserEEFromStatsEEParameterTempCacheService<T extends Stats,Y extends ListStats<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<bool> updateStatsWhereFirstUserFromStatsParameterTempCacheService(T stats) {
    try {
      tempCacheService.updateWhereStreamNotificationIsPossibleFromKeyTempCacheAndValueParametersTwo(KeysTempCacheServiceUtility.stats,stats);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}

@immutable
base class GetEEStatsEEWhereSecondUserEEParameterTempCacheService<T extends Stats,Y extends ListStats<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<T> getStatsWhereSecondUserParameterTempCacheService() {
    try {
      final stats = tempCacheService.getFromKeyTempCacheParameterTempCache(KeysTempCacheServiceUtility.statsFIRST) as T;
      return Result<T>.success(stats);
    } on LocalException catch(e) {
      return Result<T>.exception(e);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}

@immutable
base class UpdateEEStatsEEWhereSecondUserEEFromStatsEEParameterTempCacheService<T extends Stats,Y extends ListStats<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<bool> updateStatsWhereSecondUserFromStatsParameterTempCacheService(T stats) {
    try {
      tempCacheService.updateWhereStreamNotificationIsPossibleFromKeyTempCacheAndValueParametersTwo(KeysTempCacheServiceUtility.statsFIRST,stats);
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

@immutable
base class UpdateEEBoolsEEWhereIsStopTimerEEFromBoolsEEParameterTempCacheService<T extends Bools,Y extends ListBools<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<bool> updateBoolsWhereIsStopTimerFromBoolsParameterTempCacheService(T bools) {
    try {
      tempCacheService.updateWhereStreamNotificationIsPossibleFromKeyTempCacheAndValueParametersTwo(KeysTempCacheServiceUtility.boolsQQIsStopTimer,bools);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}

base class StartListeningAndCancelListeningEEBoolsEEWhereIsStopTimerEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription<T extends Bools, Y extends ListBools<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;
  @protected
  StreamSubscription<dynamic>? streamSubscription;

  void startListeningBoolsWhereIsStopTimerFromCallbackParametersTempCacheServiceAndStreamSubscription(Function(Result<T>) callback) {
    streamSubscription = tempCacheService
        .getStreamFromKeyTempCacheParameterOne(KeysTempCacheServiceUtility.boolsQQIsStopTimer)
        .listen((event) {
          callback(Result.success(event as T));
        });
  }

  void cancelListeningBoolsWhereIsStopTimerParameterStreamSubscription() {
    streamSubscription?.cancel();
  }
}

@immutable
base class GetEEIntsEEWhereElapsedTimeInMillisecondsEEParameterTempCacheService<T extends Ints,Y extends ListInts<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<T> getIntsWhereElapsedTimeInMillisecondsParameterTempCacheService() {
    try {
      final ints = tempCacheService.getFromKeyTempCacheParameterTempCache(KeysTempCacheServiceUtility.intsQQElapsedTimeInMilliseconds) as T;
      return Result<T>.success(ints);
    } on LocalException catch(e) {
      return Result<T>.exception(e);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}

@immutable
base class UpdateEEIntsEEWhereElapsedTimeInMillisecondsEEFromIntsEEParameterTempCacheService<T extends Ints,Y extends ListInts<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<bool> updateIntsWhereElapsedTimeInMillisecondsFromIntsParameterTempCacheService(T ints) {
    try {
      tempCacheService.updateWhereStreamNotificationIsPossibleFromKeyTempCacheAndValueParametersTwo(KeysTempCacheServiceUtility.intsQQElapsedTimeInMilliseconds,ints);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}

final class DataForThreeStagesOfTheMatchView extends BaseDataForNamed<EnumDataForThreeStagesOfTheMatchView> {
  Matches matches;
  String uniqueIdByUser;
  Stats statsWFirstUser;
  Stats statsWSecondUser;

  DataForThreeStagesOfTheMatchView(super.isLoading,this.matches,this.uniqueIdByUser,this.statsWFirstUser,this.statsWSecondUser);

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
    if(matches.isWhereTrueAndTrueAndEqualsFromOneParametersThree(uniqueIdByUser)) {
      return EnumDataForThreeStagesOfTheMatchView.firstUniqueIdByUserWEndgameWMatches;
    }
    if(matches.isWhereFalseAndEqualsFromOneParametersDebutWMatchesAndSecondUniqueIdByUser(uniqueIdByUser)) {
      return EnumDataForThreeStagesOfTheMatchView.secondUniqueIdByUserWDebutWMatches;
    }
    if(matches.isWhereFalseAndEqualsFromOneParametersMiddlegameWMatchesAndSecondUniqueIdByUser(uniqueIdByUser)) {
      return EnumDataForThreeStagesOfTheMatchView.secondUniqueIdByUserWMiddlegameWMatches;
    }
    if(matches.isWhereTrueAndTrueAndEqualsFromOneParametersThreeFIRST(uniqueIdByUser)) {
      return EnumDataForThreeStagesOfTheMatchView.secondUniqueIdByUserWEndgameWMatches;
    }
    return EnumDataForThreeStagesOfTheMatchView.firstUniqueIdByUserWEndgameWMatches;
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
}

final class ThreeStagesOfTheMatchViewModel extends BaseNamedViewModel<DataForThreeStagesOfTheMatchView,DefaultStreamWState<DataForThreeStagesOfTheMatchView>> {
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEMatchesEEParameterTempCacheService =
  GetEEMatchesEEParameterTempCacheService();
  final _getEEStringsEEWhereUniqueIdByUserEEParameterTempCacheService =
  GetEEStringsEEWhereUniqueIdByUserEEParameterTempCacheService();
  final _getEEStatsEEWhereFirstUserEEParameterTempCacheService =
  GetEEStatsEEWhereFirstUserEEParameterTempCacheService();
  final _getEEStatsEEWhereSecondUserEEParameterTempCacheService =
  GetEEStatsEEWhereSecondUserEEParameterTempCacheService();
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
        EndgameWMatches(0,0)
    ),
    "",
    Stats("",0,0,0,0),
    Stats("",0,0,0,0)
  )));

  @override
  void dispose() {
    super.dispose();
    _startListeningAndCancelListeningEEMatchesEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .cancelListeningMatchesParameterStreamSubscription();
  }

  @override
  Future<String> init() async {
    final getMatchesParameterTempCacheService = _getEEMatchesEEParameterTempCacheService
        .getMatchesParameterTempCacheService();
    if(getMatchesParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetMatchesParameterTempCacheService(getMatchesParameterTempCacheService.exceptionController);
    }
    final getStringsWhereUniqueIdByUserParameterTempCacheService = _getEEStringsEEWhereUniqueIdByUserEEParameterTempCacheService
        .getStringsWhereUniqueIdByUserParameterTempCacheService();
    if(getStringsWhereUniqueIdByUserParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetStringsWhereUniqueIdByUserParameterTempCacheService(getStringsWhereUniqueIdByUserParameterTempCacheService.exceptionController);
    }
    final getStatsWhereFirstUserParameterTempCacheService = _getEEStatsEEWhereFirstUserEEParameterTempCacheService
        .getStatsWhereFirstUserParameterTempCacheService();
    if(getStatsWhereFirstUserParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetStatsWhereFirstUserParameterTempCacheService(getStatsWhereFirstUserParameterTempCacheService.exceptionController);
    }
    final getStatsWhereSecondUserParameterTempCacheService = _getEEStatsEEWhereSecondUserEEParameterTempCacheService
        .getStatsWhereSecondUserParameterTempCacheService();
    if(getStatsWhereSecondUserParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetStatsWhereSecondUserParameterTempCacheService(getStatsWhereSecondUserParameterTempCacheService.exceptionController);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.matches = getMatchesParameterTempCacheService.parameter!.getClone;
    getDataForNamedParameterNamedStreamWState.uniqueIdByUser = getStringsWhereUniqueIdByUserParameterTempCacheService.parameter?.field ?? "";
    getDataForNamedParameterNamedStreamWState.statsWFirstUser = getStatsWhereFirstUserParameterTempCacheService.parameter!.getClone;
    getDataForNamedParameterNamedStreamWState.statsWSecondUser = getStatsWhereSecondUserParameterTempCacheService.parameter!.getClone;
    return KeysSuccessUtility.sUCCESS;
  }

  void listeningStreamsTempCacheService() {
    _startListeningAndCancelListeningEEMatchesEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .startListeningMatchesFromCallbackParametersTempCacheServiceAndStreamSubscription((Result<Matches> resultMatches)
    {
      getDataForNamedParameterNamedStreamWState.matches = resultMatches.parameter!.getClone;
      notifyStreamDataForNamedParameterNamedStreamWState();
    });
  }

  Future<String> _firstQQInitQQGetMatchesParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQQInitQQGetStringsWhereUniqueIdByUserParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQQInitQQGetStatsWhereFirstUserParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQQInitQQGetStatsWhereSecondUserParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }
}

final class ThreeStagesOfTheMatchView {
  late final ThreeStagesOfTheMatchViewModel _threeStagesOfTheMatchViewModel;

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
        final firstUniqueIdByUserWDebutWMatchesView = FirstUniqueIdByUserWDebutWMatchesView(
            dataForNamedParameterNamedStreamWState.matches.getClone,
            dataForNamedParameterNamedStreamWState.statsWFirstUser.getClone,
            dataForNamedParameterNamedStreamWState.statsWSecondUser.getClone);
        firstUniqueIdByUserWDebutWMatchesView.initState();
        firstUniqueIdByUserWDebutWMatchesView.build();
        break;
      case EnumDataForThreeStagesOfTheMatchView.firstUniqueIdByUserWMiddlegameWMatches:
        final firstUniqueIdByUserWMiddlegameWMatchesView = FirstUniqueIdByUserWMiddlegameWMatchesView(
            dataForNamedParameterNamedStreamWState.matches.getClone,
            dataForNamedParameterNamedStreamWState.statsWFirstUser.getClone,
            dataForNamedParameterNamedStreamWState.statsWSecondUser.getClone);
        firstUniqueIdByUserWMiddlegameWMatchesView.initState();
        firstUniqueIdByUserWMiddlegameWMatchesView.build();
        break;
      case EnumDataForThreeStagesOfTheMatchView.firstUniqueIdByUserWEndgameWMatches:
        // TODO: Handle this case.
      case EnumDataForThreeStagesOfTheMatchView.secondUniqueIdByUserWDebutWMatches:
        break;
      case EnumDataForThreeStagesOfTheMatchView.secondUniqueIdByUserWMiddlegameWMatches:
        break;
      case EnumDataForThreeStagesOfTheMatchView.secondUniqueIdByUserWEndgameWMatches:
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
  Stats statsWFirstUser;
  Stats statsWSecondUser;

  DataForFirstUniqueIdByUserWDebutWMatchesView(super.isLoading,this.matches,this.statsWFirstUser,this.statsWSecondUser);

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
  final _updateEEMatchesEEFromMatchesEEParameterTempCacheService =
  UpdateEEMatchesEEFromMatchesEEParameterTempCacheService();

  // NamedUtility

  FirstUniqueIdByUserWDebutWMatchesViewModel(Matches matches, Stats statsWFirstUser, Stats statsWSecondUser) : super(DefaultStreamWState(DataForFirstUniqueIdByUserWDebutWMatchesView(
    true,
    matches,
    statsWFirstUser,
    statsWSecondUser
  )));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  void myTurnsBanManiac(int index) {
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .insertBanManiacWMatchesFromIndexParametersDebutWMatchesAndFirstUniqueIdByUser(index);
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
    final matchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThreeParametersNine(index,false,EnumStageNamed.banManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThreeParametersNine);
  }

  void myTurnsPickManiac(int index) {
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .insertPickManiacWMatchesFromIndexParametersDebutWMatchesAndFirstUniqueIdByUser(index);
    final matchesWhereNewAndFirstUniqueIdByUserTurnsPickManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUniqueIdByUserTurnsPickManiacFromThreeParametersNine(index,false,EnumStageNamed.bansMapsToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUniqueIdByUserTurnsPickManiacFromThreeParametersNine);
  }

  void myTurnsBansMapsToPickedManiac(int index) {
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromIndexParametersTwo(index);
    final isWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne = matches
        .debutWMatches
        .isWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne();
    if(isWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne) {
      _firstQQMyTurnsBansMapsToPickedManiacQQIsWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne(index,matches);
      return;
    }
    final matchesWhereNewAndFirstUniqueIdByUserTurnsBansMapsToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUniqueIdByUserTurnsBansMapsToPickedManiacFromThreeParametersNine(index,false,EnumStageNamed.bansMapsToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUniqueIdByUserTurnsBansMapsToPickedManiacFromThreeParametersNine);
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
    final matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine = matches
        .getMatchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine(EnumStageNamed.pickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine);
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
    final matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine(index,true,EnumStageNamed.pickManiacPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine);
  }

  void myTurnsPickSurvivorPerkToPickedManiac(int index) {
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches.insertPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromIndexParametersTwo(index);
    final isWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwo = matches
        .isWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwo();
    if(isWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwo) {
      _firstQQMyTurnsPickSurvivorPerkToPickedManiacQQIsWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwo(index,matches);
      return;
    }
    final matchesWhereNewAndFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine(index,true,EnumStageNamed.pickSurvivorPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine);
  }

  Future<void> systemPickManiac() async {
    await Future.delayed(Duration(seconds: 1));
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .debutWMatches
        .insertPickManiacWMatchesWhereLastItemManiacWMatchBalanceWNotBannedWPickedParameterOne();
    final matchesWhereNewAndSystemPickManiacFromOneParametersNine = matches
        .getMatchesWhereNewAndSystemPickManiacFromOneParametersNine(EnumStageNamed.bansMapsToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickManiacFromOneParametersNine);
  }

  Future<void> systemPickManiacPerkToPickedManiac() async {
    await Future.delayed(Duration(seconds: 1));
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .insertListPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesParametersThree();
    final isNotEmpty = matches
        .debutWMatches
        .getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo
        .listSurvivorPerkWMatchBalance
        .listModel
        .isNotEmpty;
    if(isNotEmpty) {
      _firstQQSystemPickManiacPerkToPickedManiacQQIsNotEmpty(matches);
      return;
    }
    final isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance();
    if(isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance) {
      _firstQQSystemPickManiacPerkToPickedManiacQQIsWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance(matches);
      return;
    }
    final isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance();
    if(isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance) {
      _firstQQSystemPickManiacPerkToPickedManiacQQIsWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance(matches);
      return;
    }
    final matchesWhereNewAndSystemPickManiacPerkToPickedManiacFromOneParametersNine = matches
        .getMatchesWhereNewAndSystemPickManiacPerkToPickedManiacFromOneParametersNine(EnumStageNamed.pickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickManiacPerkToPickedManiacFromOneParametersNine);
  }

  Future<void> systemPickSurvivorPerkToPickedManiac() async {
    await Future.delayed(Duration(seconds: 1));
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .insertListPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesParametersThree();
    final isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance();
    if(isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance) {
      _firstQQSystemPickSurvivorPerkToPickedManiacQQIsWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance(matches);
      return;
    }
    final isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance();
    if(isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance) {
      _firstQQSystemPickSurvivorPerkToPickedManiacQQIsWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance(matches);
      return;
    }
    final matchesWhereNewAndSystemPickSurvivorPerkToPickedManiacFromOneParametersNine = matches
        .getMatchesWhereNewAndSystemPickSurvivorPerkToPickedManiacFromOneParametersNine(EnumStageNamed.pickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickSurvivorPerkToPickedManiacFromOneParametersNine);
  }

  Future<void> enemyTurnsBanManiac(int index) async {
    await Future.delayed(Duration(seconds: 1));
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .insertBanManiacWMatchesFromIndexParametersDebutWMatchesAndSecondUniqueIdByUser(index);
    final isWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance();
    if(isWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance) {
      _firstQQEnemyTurnsBanManiacQQIsWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance(index,matches);
      return;
    }
    final isWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance();
    if(isWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance) {
      _firstQQEnemyTurnsBanManiacQQIsWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance(index,matches);
      return;
    }
    final matchesWhereNewAndSecondUniqueIdByUserTurnsBanManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUniqueIdByUserTurnsBanManiacFromThreeParametersNine(index,true,EnumStageNamed.banManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUniqueIdByUserTurnsBanManiacFromThreeParametersNine);
  }

  Future<void> enemyTurnsPickManiac(int index) async {
    await Future.delayed(Duration(seconds: 1));
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .insertPickManiacWMatchesFromIndexParametersDebutWMatchesAndSecondUniqueIdByUser(index);
    final matchesWhereNewAndSecondUniqueIdByUserTurnsPickManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUniqueIdByUserTurnsPickManiacFromThreeParametersNine(index,true,EnumStageNamed.bansMapsToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUniqueIdByUserTurnsPickManiacFromThreeParametersNine);
  }

  Future<void> enemyTurnsBansMapsToPickedManiac(int index) async {
    await Future.delayed(Duration(seconds: 1));
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromIndexParametersTwoFIRST(index);
    final isWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne = matches
        .debutWMatches
        .isWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne();
    if(isWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne) {
      _firstQQEnemyTurnsBansMapsToPickedManiacQQIsWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne(index,matches);
      return;
    }
    final matchesWhereNewAndSecondUniqueIdByUserTurnsBansMapsToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUniqueIdByUserTurnsBansMapsToPickedManiacFromThreeParametersNine(index,true,EnumStageNamed.bansMapsToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUniqueIdByUserTurnsBansMapsToPickedManiacFromThreeParametersNine);
  }

  Future<void> enemyTurnsPickManiacPerkToPickedManiac(int index) async {
    await Future.delayed(Duration(seconds: 1));
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .insertPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromIndexParametersTwoFIRST(index);
    final isWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST = matches
        .isWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST();
    if(isWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST) {
      _firstQQEnemyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST(index,matches);
      return;
    }
    final matchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine(index,false,EnumStageNamed.pickManiacPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine);
  }

  Future<void> enemyTurnsPickSurvivorPerkToPickedManiac(int index) async {
    await Future.delayed(Duration(seconds: 1));
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .insertPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromIndexParametersTwoFIRST(index);
    final isWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST = matches
        .isWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST();
    if(isWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST) {
      _firstQQEnemyTurnsPickSurvivorPerkToPickedManiacQQIsWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST(index,matches);
      return;
    }
    final matchesWhereNewAndSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine(index,false,EnumStageNamed.pickSurvivorPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine);
  }

  Future<void> completed() async {
    await Future.delayed(const Duration(seconds: 1));
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .insertListRoundWMatchesWhereBeforeCallIteratorParametersThree();
    final matchesWhereNewAndTrueIsCompletedByDebutWMatchesParametersNine = matches
        .getMatchesWhereNewAndIsCompletedByDebutWMatchesParametersNine;
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndTrueIsCompletedByDebutWMatchesParametersNine);
  }

  void _firstQQMyTurnsBanManiacQQIsWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance(int index,Matches matches) {
    final matchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThreeParametersNine(index,false,EnumStageNamed.pickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThreeParametersNine);
  }

  void _firstQQMyTurnsBanManiacQQIsWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance(int index,Matches matches) {
    final matchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThreeParametersNine(index,false,EnumStageNamed.systemPickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThreeParametersNine);
  }

  void _firstQQMyTurnsBansMapsToPickedManiacQQIsWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne(int index,Matches matches) {
    final matchesWhereNewAndFirstUniqueIdByUserTurnsBansMapsToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUniqueIdByUserTurnsBansMapsToPickedManiacFromThreeParametersNine(index,false,EnumStageNamed.systemPickMapsToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUniqueIdByUserTurnsBansMapsToPickedManiacFromThreeParametersNine);
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
    final matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine = matches
        .getMatchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine(EnumStageNamed.systemPickManiacPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine);
  }

  void _firstBranchOneQQSystemPickMapsToPickedManiacQQIsNotEmpty(Matches matches) {
    final matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine = matches
        .getMatchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine(EnumStageNamed.pickManiacPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine);
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
    final matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine = matches
        .getMatchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine(EnumStageNamed.systemPickSurvivorPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine);
  }

  void _firstBranchOneQQSystemPickMapsToPickedManiacQQIsNotEmptyFIRST(Matches matches) {
    final matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine = matches
        .getMatchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine(EnumStageNamed.pickSurvivorPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine);
  }

  void _firstQQSystemPickMapsToPickedManiacQQIsWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance(Matches matches) {
    final matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine = matches
        .getMatchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine(EnumStageNamed.banManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine);
  }

  void _firstQQSystemPickMapsToPickedManiacQQIsWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance(Matches matches) {
    final matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine = matches
        .getMatchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine(EnumStageNamed.isCompleted);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine);
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
    final matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine(index,false,EnumStageNamed.pickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstBranchOneQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(int index,Matches matches) {
    final matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine(index,false,EnumStageNamed.pickManiacPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstBranchTwoQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(int index, Matches matches) {
    final matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine(index,false,EnumStageNamed.systemPickSurvivorPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstBranchThreeQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(int index, Matches matches) {
    final matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine(index,false,EnumStageNamed.pickSurvivorPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstBranchFourQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(int index, Matches matches) {
    final matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine(index,false,EnumStageNamed.banManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstBranchFiveQQMyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo(int index, Matches matches) {
    final matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine(index,false,EnumStageNamed.isCompleted);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstQQMyTurnsPickSurvivorPerkToPickedManiacQQIsWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwo(int index, Matches matches) {
    final isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST = matches
        .isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST();
    if(isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST) {
      _firstBranchOneQQMyTurnsPickSurvivorPerkToPickedManiacQQIsWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwo(index,matches);
      return;
    }
    final isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance();
    if(isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance) {
      _firstBranchTwoQQMyTurnsPickSurvivorPerkToPickedManiacQQIsWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwo(index,matches);
      return;
    }
    final isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance();
    if(isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance) {
      _firstBranchThreeQQMyTurnsPickSurvivorPerkToPickedManiacQQIsWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwo(index,matches);
      return;
    }
    final matchesWhereNewAndFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine(index,false,EnumStageNamed.pickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstBranchOneQQMyTurnsPickSurvivorPerkToPickedManiacQQIsWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwo(int index, Matches matches) {
    final matchesWhereNewAndFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine(index,false,EnumStageNamed.pickSurvivorPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstBranchTwoQQMyTurnsPickSurvivorPerkToPickedManiacQQIsWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwo(int index, Matches matches) {
    final matchesWhereNewAndFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine(index,false,EnumStageNamed.banManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstBranchThreeQQMyTurnsPickSurvivorPerkToPickedManiacQQIsWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwo(int index, Matches matches) {
    final matchesWhereNewAndFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine(index,false,EnumStageNamed.isCompleted);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstQQSystemPickManiacPerkToPickedManiacQQIsNotEmpty(Matches matches) {
    final isWhereNotEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerkWMatchBalance = matches
        .debutWMatches
        .getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo
        .isWhereNotEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerkWMatchBalance();
    if(isWhereNotEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerkWMatchBalance) {
      _firstBranchOneQQSystemPickManiacPerkToPickedManiacQQIsNotEmpty(matches);
      return;
    }
    final matchesWhereNewAndSystemPickManiacPerkToPickedManiacFromOneParametersNine = matches
        .getMatchesWhereNewAndSystemPickManiacPerkToPickedManiacFromOneParametersNine(EnumStageNamed.systemPickSurvivorPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickManiacPerkToPickedManiacFromOneParametersNine);
  }

  void _firstBranchOneQQSystemPickManiacPerkToPickedManiacQQIsNotEmpty(Matches matches) {
    final matchesWhereNewAndSystemPickManiacPerkToPickedManiacFromOneParametersNine = matches
        .getMatchesWhereNewAndSystemPickManiacPerkToPickedManiacFromOneParametersNine(EnumStageNamed.pickSurvivorPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickManiacPerkToPickedManiacFromOneParametersNine);
  }

  void _firstQQSystemPickManiacPerkToPickedManiacQQIsWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance(Matches matches) {
    final matchesWhereNewAndSystemPickManiacPerkToPickedManiacFromOneParametersNine = matches
        .getMatchesWhereNewAndSystemPickManiacPerkToPickedManiacFromOneParametersNine(EnumStageNamed.banManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickManiacPerkToPickedManiacFromOneParametersNine);
  }

  void _firstQQSystemPickManiacPerkToPickedManiacQQIsWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance(Matches matches) {
    final matchesWhereNewAndSystemPickManiacPerkToPickedManiacFromOneParametersNine = matches
        .getMatchesWhereNewAndSystemPickManiacPerkToPickedManiacFromOneParametersNine(EnumStageNamed.isCompleted);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickManiacPerkToPickedManiacFromOneParametersNine);
  }

  void _firstQQSystemPickSurvivorPerkToPickedManiacQQIsWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance(Matches matches) {
    final matchesWhereNewAndSystemPickSurvivorPerkToPickedManiacFromOneParametersNine = matches
        .getMatchesWhereNewAndSystemPickSurvivorPerkToPickedManiacFromOneParametersNine(EnumStageNamed.banManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickSurvivorPerkToPickedManiacFromOneParametersNine);
  }

  void _firstQQSystemPickSurvivorPerkToPickedManiacQQIsWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance(Matches matches) {
    final matchesWhereNewAndSystemPickSurvivorPerkToPickedManiacFromOneParametersNine = matches
        .getMatchesWhereNewAndSystemPickSurvivorPerkToPickedManiacFromOneParametersNine(EnumStageNamed.isCompleted);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemPickSurvivorPerkToPickedManiacFromOneParametersNine);
  }

  void _firstQQEnemyTurnsBanManiacQQIsWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance(int index,Matches matches) {
    final matchesWhereNewAndSecondUniqueIdByUserTurnsBanManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUniqueIdByUserTurnsBanManiacFromThreeParametersNine(index,true,EnumStageNamed.pickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUniqueIdByUserTurnsBanManiacFromThreeParametersNine);
  }

  void _firstQQEnemyTurnsBanManiacQQIsWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance(int index,Matches matches) {
    final matchesWhereNewAndSecondUniqueIdByUserTurnsBanManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUniqueIdByUserTurnsBanManiacFromThreeParametersNine(index,true,EnumStageNamed.systemPickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUniqueIdByUserTurnsBanManiacFromThreeParametersNine);
  }

  void _firstQQEnemyTurnsBansMapsToPickedManiacQQIsWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne(int index, Matches matches) {
    final matchesWhereNewAndSecondUniqueIdByUserTurnsBansMapsToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUniqueIdByUserTurnsBansMapsToPickedManiacFromThreeParametersNine(index,true,EnumStageNamed.systemPickMapsToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUniqueIdByUserTurnsBansMapsToPickedManiacFromThreeParametersNine);
  }

  void _firstQQEnemyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST(int index, Matches matches) {
    final isWhereLengthListPickManiacPerkWMatchesNotEqualsNecessaryLengthPickManiacPerkParametersTwo = matches
        .isWhereLengthListPickManiacPerkWMatchesNotEqualsNecessaryLengthPickManiacPerkParametersTwo();
    if(isWhereLengthListPickManiacPerkWMatchesNotEqualsNecessaryLengthPickManiacPerkParametersTwo) {
      _firstBranchOneQQEnemyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST(index,matches);
      return;
    }
    final isWhereNotEmptyAndEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerkWMatchBalance = matches
        .debutWMatches
        .getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo
        .isWhereNotEmptyAndEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerkWMatchBalance();
    if(isWhereNotEmptyAndEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerkWMatchBalance) {
      _firstBranchTwoQQEnemyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST(index,matches);
      return;
    }
    final isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkParametersTwo = matches
        .isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkParametersTwo();
    if(isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkParametersTwo) {
      _firstBranchThreeQQEnemyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST(index,matches);
      return;
    }
    final isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance();
    if(isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance) {
      _firstBranchFourQQEnemyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST(index,matches);
      return;
    }
    final isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance();
    if(isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance) {
      _firstBranchFiveQQEnemyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST(index,matches);
      return;
    }
    final matchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine(index,true,EnumStageNamed.pickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstBranchOneQQEnemyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST(int index, Matches matches) {
    final matchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine(index,true,EnumStageNamed.pickManiacPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstBranchTwoQQEnemyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST(int index, Matches matches) {
    final matchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine(index,true,EnumStageNamed.systemPickSurvivorPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstBranchThreeQQEnemyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST(int index, Matches matches) {
    final matchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine(index,true,EnumStageNamed.pickSurvivorPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstBranchFourQQEnemyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST(int index, Matches matches) {
    final matchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine(index,true,EnumStageNamed.banManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstBranchFiveQQEnemyTurnsPickManiacPerkToPickedManiacQQIsWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST(int index, Matches matches) {
    final matchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine(index,true,EnumStageNamed.isCompleted);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstQQEnemyTurnsPickSurvivorPerkToPickedManiacQQIsWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST(int index, Matches matches) {
    final isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkParametersTwo = matches
        .isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkParametersTwo();
    if(isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkParametersTwo) {
      _firstBranchOneQQEnemyTurnsPickSurvivorPerkToPickedManiacQQIsWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST(index,matches);
      return;
    }
    final isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance();
    if(isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance) {
      _firstBranchTwoQQEnemyTurnsPickSurvivorPerkToPickedManiacQQIsWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST(index,matches);
      return;
    }
    final isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance = matches
        .debutWMatches
        .isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance();
    if(isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance) {
      _firstBranchThreeQQEnemyTurnsPickSurvivorPerkToPickedManiacQQIsWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST(index,matches);
      return;
    }
    final matchesWhereNewAndSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine(index,true,EnumStageNamed.pickManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstBranchOneQQEnemyTurnsPickSurvivorPerkToPickedManiacQQIsWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST(int index, Matches matches) {
    final matchesWhereNewAndSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine(index,true,EnumStageNamed.pickSurvivorPerkToPickedManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstBranchTwoQQEnemyTurnsPickSurvivorPerkToPickedManiacQQIsWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST(int index, Matches matches) {
    final matchesWhereNewAndSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine(index,true,EnumStageNamed.banManiac);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine);
  }

  void _firstBranchThreeQQEnemyTurnsPickSurvivorPerkToPickedManiacQQIsWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST(int index, Matches matches) {
    final matchesWhereNewAndSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine = matches
        .getMatchesWhereNewAndSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine(index,true,EnumStageNamed.isCompleted);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine);
  }
}

final class FirstUniqueIdByUserWDebutWMatchesView {
  final FirstUniqueIdByUserWDebutWMatchesViewModel _firstUniqueIdByUserWDebutWMatchesViewModel;

  FirstUniqueIdByUserWDebutWMatchesView(Matches matches,Stats statsWFirstUser,Stats statsWSecondUser)
      : _firstUniqueIdByUserWDebutWMatchesViewModel = FirstUniqueIdByUserWDebutWMatchesViewModel(matches,statsWFirstUser,statsWSecondUser);

  // Override
  void initState() {
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
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
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
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
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
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("LastItemPickManiacWMatches: ${matches.debutWMatches.listPickManiacWMatches.listModel.last}");
        debugPrint("ListMapsWhereNotBannedMapsAndLastItemPickManiacWMatches: ${matches.debutWMatches.getListMapsWMatchBalanceWhereNotBannedMapsAndLastItemParameterListPickManiacWMatches}");
        debugPrint("You turns bans maps to picked maniac (index): ");
        final input = stdin.readLineSync();
        final parse = int.parse(input ?? "0");
        _firstUniqueIdByUserWDebutWMatchesViewModel.myTurnsBansMapsToPickedManiac(parse);
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.systemPickMapsToPickedManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("LastItemPickManiacWMatches: ${matches.debutWMatches.listPickManiacWMatches.listModel.last}");
        debugPrint("ListMapsWhereNotBannedMapsAndLastItemPickManiacWMatches: ${matches.debutWMatches.getListMapsWMatchBalanceWhereNotBannedMapsAndLastItemParameterListPickManiacWMatches}");
        debugPrint("System: Now pick maps to picked maniac");
        /// THIS CODE IS EXECUTED ONLY BY THE FIRST USER
        _firstUniqueIdByUserWDebutWMatchesViewModel.systemPickMapsToPickedManiac();
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsPickManiacPerkToPickedManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("LastItemPickManiacWMatches: ${matches.debutWMatches.listPickManiacWMatches.listModel.last}");
        debugPrint("ListManiacPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatches: ${matches.getListManiacPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwo}");
        debugPrint("You turns pick maniac perk to picked maniac (index): ");
        final input = stdin.readLineSync();
        final parse = int.parse(input ?? "0");
        _firstUniqueIdByUserWDebutWMatchesViewModel.myTurnsPickManiacPerkToPickedManiac(parse);
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.myTurnsPickSurvivorPerkToPickedManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("LastItemPickManiacWMatches: ${matches.debutWMatches.listPickManiacWMatches.listModel.last}");
        debugPrint("ListSurvivorPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatches: ${matches.getListSurvivorPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwo}");
        final input = stdin.readLineSync();
        final parse = int.parse(input ?? "0");
        _firstUniqueIdByUserWDebutWMatchesViewModel.myTurnsPickSurvivorPerkToPickedManiac(parse);
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.systemPickManiacPerkToPickedManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("LastItemPickManiacWMatches: ${matches.debutWMatches.listPickManiacWMatches.listModel.last}");
        debugPrint("ListManiacPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatches: ${matches.getListManiacPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwo}");
        debugPrint("System: Now pick maniac perk to picked maniac");
        /// THIS CODE IS EXECUTED ONLY BY THE FIRST USER
        _firstUniqueIdByUserWDebutWMatchesViewModel.systemPickManiacPerkToPickedManiac();
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.systemPickSurvivorPerkToPickedManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("LastItemPickManiacWMatches: ${matches.debutWMatches.listPickManiacWMatches.listModel.last}");
        debugPrint("ListSurvivorPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatches: ${matches.getListSurvivorPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwo}");
        debugPrint("System: Now pick survivor perk to picked maniac");
        /// THIS CODE IS EXECUTED ONLY BY THE FIRST USER
        _firstUniqueIdByUserWDebutWMatchesViewModel.systemPickSurvivorPerkToPickedManiac();
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.systemPickManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("ListPickManiacWMatchesWFirstUniqueIdByUser: ${matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser}");
        debugPrint("ListPickManiacWMatchesWSecondUniqueIdByUser: ${matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser}");
        debugPrint("ListBanManiacWMatchesWFirstUniqueIdByUser: ${matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser}");
        debugPrint("ListBanManiacWMatchesWSecondUniqueIdByUser: ${matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser}");
        debugPrint("ListManiacWMatchBalance: ${matches.debutWMatches.getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree}");
        debugPrint("System: Now pick maniac");
        /// THIS CODE IS EXECUTED ONLY BY THE FIRST USER
        _firstUniqueIdByUserWDebutWMatchesViewModel.systemPickManiac();
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsBanManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("ListPickManiacWMatchesWFirstUniqueIdByUser: ${matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser}");
        debugPrint("ListPickManiacWMatchesWSecondUniqueIdByUser: ${matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser}");
        debugPrint("ListBanManiacWMatchesWFirstUniqueIdByUser: ${matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser}");
        debugPrint("ListBanManiacWMatchesWSecondUniqueIdByUser: ${matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser}");
        debugPrint("ListManiacWMatchBalance: ${matches.debutWMatches.getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree}");
        debugPrint("Enemy turns ban maniac (index): 0");
        _firstUniqueIdByUserWDebutWMatchesViewModel.enemyTurnsBanManiac(0);
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsPickManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("ListPickManiacWMatchesWFirstUniqueIdByUser: ${matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser}");
        debugPrint("ListPickManiacWMatchesWSecondUniqueIdByUser: ${matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser}");
        debugPrint("ListBanManiacWMatchesWFirstUniqueIdByUser: ${matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser}");
        debugPrint("ListBanManiacWMatchesWSecondUniqueIdByUser: ${matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser}");
        debugPrint("ListManiacWMatchBalance: ${matches.debutWMatches.getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree}");
        debugPrint("Enemy turns pick maniac (index): 0");
        _firstUniqueIdByUserWDebutWMatchesViewModel.enemyTurnsPickManiac(0);
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsBansMapsToPickedManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("LastItemPickManiacWMatches: ${matches.debutWMatches.listPickManiacWMatches.listModel.last}");
        debugPrint("ListMapsWhereNotBannedMapsAndLastItemPickManiacWMatches: ${matches.debutWMatches.getListMapsWMatchBalanceWhereNotBannedMapsAndLastItemParameterListPickManiacWMatches}");
        debugPrint("Enemy turns bans maps to picked maniac (index): 0");
        _firstUniqueIdByUserWDebutWMatchesViewModel.enemyTurnsBansMapsToPickedManiac(0);
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsPickManiacPerkToPickedManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("LastItemPickManiacWMatches: ${matches.debutWMatches.listPickManiacWMatches.listModel.last}");
        debugPrint("ListManiacPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatches: ${matches.getListManiacPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwo}");
        debugPrint("Enemy turns pick maniac perk to picked maniac (index): 0");
        _firstUniqueIdByUserWDebutWMatchesViewModel.enemyTurnsPickManiacPerkToPickedManiac(0);
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.enemyTurnsPickSurvivorPerkToPickedManiac:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("LastItemPickManiacWMatches: ${matches.debutWMatches.listPickManiacWMatches.listModel.last}");
        debugPrint("ListSurvivorPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatches: ${matches.getListSurvivorPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwo}");
        debugPrint("Enemy turns pick survivor perk to picked maniac (index): 0");
        _firstUniqueIdByUserWDebutWMatchesViewModel.enemyTurnsPickSurvivorPerkToPickedManiac(0);
        break;
      case EnumDataForFirstUniqueIdByUserWDebutWMatchesView.isCompleted:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("ListPickManiacWMatchesWFirstUniqueIdByUser: ${matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser}");
        debugPrint("ListPickManiacWMatchesWSecondUniqueIdByUser: ${matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser}");
        debugPrint("ListPickManiacWMatchesWSystem: ${matches.getListPickManiacWMatchesWhereNotEqualsParametersThree}");
        debugPrint("ListBanManiacWMatchesWFirstUniqueIdByUser: ${matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser}");
        debugPrint("ListBanManiacWMatchesWSecondUniqueIdByUser: ${matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser}");
        debugPrint("Preparation, please wait");
        /// THIS CODE IS EXECUTED ONLY BY THE FIRST USER
        _firstUniqueIdByUserWDebutWMatchesViewModel.completed();
        break;
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

final class DataForFirstUniqueIdByUserWMiddlegameWMatchesView extends BaseDataForNamed<EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView> {
  Matches matches;
  Stats statsWFirstUser;
  Stats statsWSecondUser;

  DataForFirstUniqueIdByUserWMiddlegameWMatchesView(super.isLoading,this.matches,this.statsWFirstUser,this.statsWSecondUser);

  @override
  EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.exception;
    }
    if(matches
        .middlegameWMatches
        .listRoundWMatches
        .getUnfinishedListRoundWMatchesParameterListModel
        .isEmpty)
    {
      return EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.isCompleted;
    }
    if(matches
        .middlegameWMatches
        .listRoundWMatches
        .getUnfinishedListRoundWMatchesParameterListModel
        .first
        .isWhereTrueAndFalseAndNotEqualsNextRoundParametersThree())
    {
      return EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.myManiacWMyTurnsClickStartTimer;
    }
    if(matches
        .middlegameWMatches
        .listRoundWMatches
        .getUnfinishedListRoundWMatchesParameterListModel
        .first
        .isWhereFalseAndFalseAndTrueAndNotEqualsNextRoundParametersFour())
    {
      return EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.mySurvivorWMyTurnsClickStartTimer;
    }
    if(matches
        .middlegameWMatches
        .listRoundWMatches
        .getUnfinishedListRoundWMatchesParameterListModel
        .first
        .isWhereTrueAndTrueAndFalseAndNotEqualsNextRoundParametersFour())
    {
      return EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.myManiacWEnemyTurnsClickStartTimer;
    }
    if(matches
        .middlegameWMatches
        .listRoundWMatches
        .getUnfinishedListRoundWMatchesParameterListModel
        .first
        .isWhereFalseAndFalseAndNotEqualsNextRoundParametersThree())
    {
      return EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.mySurvivorWEnemyTurnsClickStartTimer;
    }
    if(matches
        .middlegameWMatches
        .listRoundWMatches
        .getUnfinishedListRoundWMatchesParameterListModel
        .first
        .isWhereTrueAndTrueAndNotEqualsNextRoundParametersThree())
    {
      return EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.myManiacWSurvivorWMyClickStopTimer;
    }
    if(matches
        .middlegameWMatches
        .listRoundWMatches
        .getUnfinishedListRoundWMatchesParameterListModel
        .first
        .isWhereEqualsNextRoundParameterEnumRoundStatus())
    {
      return EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.systemNextRound;
    }
    return EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.isCompleted;
  }

}

enum EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView {
  isLoading,
  exception,
  isCompleted,
  myManiacWMyTurnsClickStartTimer,
  mySurvivorWMyTurnsClickStartTimer,
  myManiacWEnemyTurnsClickStartTimer,
  mySurvivorWEnemyTurnsClickStartTimer,
  myManiacWSurvivorWMyClickStopTimer,
  systemNextRound,
}

final class FirstUniqueIdByUserWMiddlegameWMatchesViewModel extends BaseNamedViewModel<DataForFirstUniqueIdByUserWMiddlegameWMatchesView,DefaultStreamWState<DataForFirstUniqueIdByUserWMiddlegameWMatchesView>> {
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEIntsEEWhereElapsedTimeInMillisecondsEEParameterTempCacheService =
  GetEEIntsEEWhereElapsedTimeInMillisecondsEEParameterTempCacheService();
  final _updateEEBoolsEEWhereIsStopTimerEEFromBoolsEEParameterTempCacheService =
  UpdateEEBoolsEEWhereIsStopTimerEEFromBoolsEEParameterTempCacheService();
  final _updateEEStatsEEWhereFirstUserEEFromStatsEEParameterTempCacheService =
  UpdateEEStatsEEWhereFirstUserEEFromStatsEEParameterTempCacheService();
  final _updateEEStatsEEWhereSecondUserEEFromStatsEEParameterTempCacheService =
  UpdateEEStatsEEWhereSecondUserEEFromStatsEEParameterTempCacheService();
  final _updateEEMatchesEEFromMatchesEEParameterTempCacheService =
  UpdateEEMatchesEEFromMatchesEEParameterTempCacheService();

  // NamedUtility

  FirstUniqueIdByUserWMiddlegameWMatchesViewModel(Matches matches, Stats statsWFirstUser, Stats statsWSecondUser) : super(DefaultStreamWState(DataForFirstUniqueIdByUserWMiddlegameWMatchesView(
    true,
    matches,
    statsWFirstUser,
    statsWSecondUser
  )));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  void myManiacWMyTurnsClickStartTimer() {
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .middlegameWMatches
        .listRoundWMatches
        .updateWhereIsStartTimerWFirstUniqueIdByUserSettingTrueParameterListModel();
    final matchesWhereNewAndMyManiacWMyTurnsClickStartTimerParametersNine = matches
        .getMatchesWhereNewAndMyManiacWMyTurnsClickStartTimerParametersNine;
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndMyManiacWMyTurnsClickStartTimerParametersNine);
  }

  void mySurvivorWMyTurnsClickStartTimer() {
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .middlegameWMatches
        .listRoundWMatches
        .updateWhereIsStartTimerWFirstUniqueIdByUserSettingTrueParameterListModel();
    final matchesWhereNewAndMySurvivorWMyTurnsClickStartTimerParametersNine = matches
        .getMatchesWhereNewAndMySurvivorWMyTurnsClickStartTimerParametersNine;
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndMySurvivorWMyTurnsClickStartTimerParametersNine);
  }

  Future<void> myManiacWEnemyTurnsClickStartTimer() async {
    await Future.delayed(const Duration(seconds: 1));
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .middlegameWMatches
        .listRoundWMatches
        .updateWhereIsStartTimerWSecondUniqueIdByUserSettingTrueParameterListModel();
    final matchesWhereNewAndMyManiacWEnemyTurnsClickStartTimerParametersNine = matches
        .getMatchesWhereNewAndMyManiacWEnemyTurnsClickStartTimerParametersNine;
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndMyManiacWEnemyTurnsClickStartTimerParametersNine);
  }

  Future<void> mySurvivorWEnemyTurnsClickStartTimer() async {
    await Future.delayed(const Duration(seconds: 1));
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .middlegameWMatches
        .listRoundWMatches
        .updateWhereIsStartTimerWSecondUniqueIdByUserSettingTrueParameterListModel();
    final matchesWhereNewAndMySurvivorWEnemyTurnsClickStartTimerParametersNine = matches
        .getMatchesWhereNewAndMySurvivorWEnemyTurnsClickStartTimerParametersNine;
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndMySurvivorWEnemyTurnsClickStartTimerParametersNine);
  }

  void myManiacWSurvivorWMyClickStopTimer() {
    _updateEEBoolsEEWhereIsStopTimerEEFromBoolsEEParameterTempCacheService
        .updateBoolsWhereIsStopTimerFromBoolsParameterTempCacheService(Bools(true));
    final getIntsWhereElapsedTimeInMillisecondsParameterTempCacheService = _getEEIntsEEWhereElapsedTimeInMillisecondsEEParameterTempCacheService
        .getIntsWhereElapsedTimeInMillisecondsParameterTempCacheService();
    if(getIntsWhereElapsedTimeInMillisecondsParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      _firstQQMyManiacWSurvivorWMyClickStopTimerQQGetIntsWhereElapsedTimeInMillisecondsParameterTempCacheService(getIntsWhereElapsedTimeInMillisecondsParameterTempCacheService.exceptionController);
      return;
    }
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .middlegameWMatches
        .listRoundWMatches
        .updateWhereSwapRoleManiacWFalseStartTimerWUniqueIdByUserFromOneParameterListModel(getIntsWhereElapsedTimeInMillisecondsParameterTempCacheService.parameter?.field ?? 0);
    final matchesWhereNewAndMyManiacWSurvivorWMyClickStopTimerFromOneParametersNine = matches
        .getMatchesWhereNewAndMyManiacWSurvivorWMyClickStopTimerFromOneParametersNine(getIntsWhereElapsedTimeInMillisecondsParameterTempCacheService.parameter?.field ?? 0);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndMyManiacWSurvivorWMyClickStopTimerFromOneParametersNine);
  }

  void systemNextRound() {
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    matches
        .middlegameWMatches
        .listRoundWMatches
        .updateWhereEnumRoundStatusSettingEndOfTheRoundParameterListModel();
    final isEmpty = matches
        .middlegameWMatches
        .listRoundWMatches
        .getUnfinishedListRoundWMatchesParameterListModel
        .isEmpty;
    if(isEmpty) {
      _firstQQSystemNextRoundQQIsEmpty(matches);
      return;
    }
    final isWhereFinishedListRoundWMatchesMoreThanUnfinishedListRoundWMatches = matches
        .middlegameWMatches
        .listRoundWMatches
        .isWhereFinishedListRoundWMatchesMoreThanUnfinishedListRoundWMatches();
    if(isWhereFinishedListRoundWMatchesMoreThanUnfinishedListRoundWMatches) {
      _firstQQSystemNextRoundQQIsWhereFinishedListRoundWMatchesMoreThanUnfinishedListRoundWMatches(matches);
      return;
    }
    final matchesWhereNewAndSystemNextRoundWStartRoundParametersNine =
        matches.getMatchesWhereNewAndSystemNextRoundWStartRoundParametersNine;
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemNextRoundWStartRoundParametersNine);
  }

  void completed() {
    final matches = getDataForNamedParameterNamedStreamWState.matches;
    final statsWFirstUser = getDataForNamedParameterNamedStreamWState.statsWFirstUser;
    final statsWSecondUser = getDataForNamedParameterNamedStreamWState.statsWSecondUser;
    final matchesWhereNewAndIsCompletedByMiddlegameWMatchesFromTwoParametersNine = matches
        .getMatchesWhereNewAndIsCompletedByMiddlegameWMatchesFromTwoParametersNine(statsWFirstUser.ratingPoints,statsWSecondUser.ratingPoints);
    // TODO: Update FIRST/SECOND STATS AND ADD IF TO LISTENING MATCHES TO ThreeStagesMatchViewModel
    _updateEEStatsEEWhereFirstUserEEFromStatsEEParameterTempCacheService
        .updateStatsWhereFirstUserFromStatsParameterTempCacheService(stats);
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndIsCompletedByMiddlegameWMatchesFromTwoParametersNine);
  }

  void _firstQQMyManiacWSurvivorWMyClickStopTimerQQGetIntsWhereElapsedTimeInMillisecondsParameterTempCacheService(ExceptionController exceptionController) {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQQSystemNextRoundQQIsEmpty(Matches matches) {
    final matchesWhereNewAndSystemNextRoundWCompletedMatchParametersNine =
        matches.getMatchesWhereNewAndSystemNextRoundWCompletedMatchParametersNine;
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemNextRoundWCompletedMatchParametersNine);
  }

  void _firstQQSystemNextRoundQQIsWhereFinishedListRoundWMatchesMoreThanUnfinishedListRoundWMatches(Matches matches) {
    final isWhereFinishedListRoundWMatchesAndWereWonByOneUser = matches
        .middlegameWMatches
        .listRoundWMatches
        .isWhereFinishedListRoundWMatchesAndWereWonByOneUser();
    if(isWhereFinishedListRoundWMatchesAndWereWonByOneUser) {
      _firstBranchOneQQSystemNextRoundQQIsWhereFinishedListRoundWMatchesMoreThanUnfinishedListRoundWMatches(matches);
      return;
    }
    final matchesWhereNewAndSystemNextRoundWStartRoundParametersNine =
        matches.getMatchesWhereNewAndSystemNextRoundWStartRoundParametersNine;
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemNextRoundWStartRoundParametersNine);
  }

  void _firstBranchOneQQSystemNextRoundQQIsWhereFinishedListRoundWMatchesMoreThanUnfinishedListRoundWMatches(Matches matches) {
    final matchesWhereNewAndSystemNextRoundWCompletedMatchParametersNine =
        matches.getMatchesWhereNewAndSystemNextRoundWCompletedMatchParametersNine;
    _updateEEMatchesEEFromMatchesEEParameterTempCacheService
        .updateMatchesFromMatchesParameterTempCacheService(matchesWhereNewAndSystemNextRoundWCompletedMatchParametersNine);
  }
}

final class FirstUniqueIdByUserWMiddlegameWMatchesView {
  final FirstUniqueIdByUserWMiddlegameWMatchesViewModel _firstUniqueIdByUserWMiddlegameWMatchesViewModel;

  FirstUniqueIdByUserWMiddlegameWMatchesView(Matches matches, Stats statsWFirstUser, Stats statsWSecondUser)
      : _firstUniqueIdByUserWMiddlegameWMatchesViewModel = FirstUniqueIdByUserWMiddlegameWMatchesViewModel(matches,statsWFirstUser,statsWSecondUser);

  // Override
  void initState() {
    _initParameterFirstUniqueIdByUserWMiddlegameWMatchesViewModel();
  }

  // Override
  void dispose() {
    _firstUniqueIdByUserWMiddlegameWMatchesViewModel.dispose();
  }

  // Override
  void build() {
    final dataForNamedParameterNamedStreamWState = _firstUniqueIdByUserWMiddlegameWMatchesViewModel
        .getDataForNamedParameterNamedStreamWState;
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.isLoading:
        debugPrint("Build: IsLoading");
        break;
      case EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.exception:
        debugPrint("Build: Exception(${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException})");
        break;
      case EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.isCompleted:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("ListRoundWMatches: ${matches.middlegameWMatches.listRoundWMatches.listModel}");
        debugPrint("Preparation, please wait");
        /// THIS CODE IS EXECUTED ONLY BY THE FIRST USER
        _firstUniqueIdByUserWMiddlegameWMatchesViewModel.completed();
        break;
      case EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.myManiacWMyTurnsClickStartTimer:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("ListRoundWMatches: ${matches.middlegameWMatches.listRoundWMatches.listModel}");
        debugPrint("Round: ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.round}");
        debugPrint("Who's the maniac ?: You");
        debugPrint("Maniac: ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.pickManiacWMatches.name}");
        debugPrint("Chase Time (You): ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser}");
        debugPrint("Chase Time (${matches.secondUsernameByModel}): ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser}");
        debugPrint("Start timer (Input 'yes'): ");
        final input = stdin.readLineSync();
        if(input != "yes") {
          break;
        }
        _firstUniqueIdByUserWMiddlegameWMatchesViewModel.myManiacWMyTurnsClickStartTimer();
        break;
      case EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.mySurvivorWMyTurnsClickStartTimer:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("ListRoundWMatches: ${matches.middlegameWMatches.listRoundWMatches.listModel}");
        debugPrint("Round: ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.round}");
        debugPrint("Who's the maniac ?: User '${matches.secondUsernameByModel}'");
        debugPrint("Chase Time (You): ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser}");
        debugPrint("Chase Time (${matches.secondUsernameByModel}): ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser}");
        debugPrint("Start timer (Input 'yes'): ");
        final input = stdin.readLineSync();
        if(input != "yes") {
          break;
        }
        _firstUniqueIdByUserWMiddlegameWMatchesViewModel.mySurvivorWMyTurnsClickStartTimer();
        break;
      case EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.myManiacWEnemyTurnsClickStartTimer:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("ListRoundWMatches: ${matches.middlegameWMatches.listRoundWMatches.listModel}");
        debugPrint("Round: ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.round}");
        debugPrint("Who's the maniac ?: You");
        debugPrint("Maniac: ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.pickManiacWMatches.name}");
        debugPrint("Chase Time (You): ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser}");
        debugPrint("Chase Time (${matches.secondUsernameByModel}): ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser}");
        debugPrint("Wait enemy");
        _firstUniqueIdByUserWMiddlegameWMatchesViewModel.myManiacWEnemyTurnsClickStartTimer();
        break;
      case EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.mySurvivorWEnemyTurnsClickStartTimer:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("ListRoundWMatches: ${matches.middlegameWMatches.listRoundWMatches.listModel}");
        debugPrint("Round: ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.round}");
        debugPrint("Who's the maniac ?: User '${matches.secondUsernameByModel}'");
        debugPrint("Maniac: ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.pickManiacWMatches.name}");
        debugPrint("Chase Time (You): ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser}");
        debugPrint("Chase Time (${matches.secondUsernameByModel}): ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser}");
        debugPrint("Wait enemy");
        _firstUniqueIdByUserWMiddlegameWMatchesViewModel.mySurvivorWEnemyTurnsClickStartTimer();
        break;
      case EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.myManiacWSurvivorWMyClickStopTimer:
        final timerView = TimerView();
        timerView.initState();
        timerView.build();
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("ListRoundWMatches: ${matches.middlegameWMatches.listRoundWMatches.listModel}");
        debugPrint("Round: ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.round}");
        debugPrint("Who's the maniac ?: ${matches.getStringWhoTheManiacWhereFirstUIBUAndFirstItemUnfinishedListRoundWMatchesParametersTwo}");
        debugPrint("Maniac: ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.pickManiacWMatches.name}");
        debugPrint("Chase Time (You): ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser}");
        debugPrint("Chase Time (${matches.secondUsernameByModel}): ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser}");
        debugPrint("Stop timer (Input 'yes'): ");
        final input = stdin.readLineSync();
        if(input != "yes") {
          break;
        }
        _firstUniqueIdByUserWMiddlegameWMatchesViewModel.myManiacWSurvivorWMyClickStopTimer();
        break;
      case EnumDataForFirstUniqueIdByUserWMiddlegameWMatchesView.systemNextRound:
        final matches = dataForNamedParameterNamedStreamWState.matches;
        final statsWFirstUser = dataForNamedParameterNamedStreamWState.statsWFirstUser;
        final statsWSecondUser = dataForNamedParameterNamedStreamWState.statsWSecondUser;
        debugPrint(matches.getFormattedParameterTextLogAction);
        debugPrint("StatsWFirstUser: $statsWFirstUser");
        debugPrint("StatsWSecondUser: $statsWSecondUser");
        debugPrint("ListRoundWMatches: ${matches.middlegameWMatches.listRoundWMatches.listModel}");
        debugPrint("Round: ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.round}");
        debugPrint("Maniac: ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.pickManiacWMatches.name}");
        debugPrint("Chase Time (You): ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser}");
        debugPrint("Chase Time (${matches.secondUsernameByModel}): ${matches.middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser}");
        debugPrint("Win Round: ${matches.getStringWhoWinRoundWhereFirstUIBUAndFirstItemUnfinishedListRoundWMatchesParametersThree}");
        /// THIS CODE IS EXECUTED ONLY BY THE FIRST USER
        _firstUniqueIdByUserWMiddlegameWMatchesViewModel.systemNextRound();
        break;
      default:
        break;
    }
  }

  Future<void> _initParameterFirstUniqueIdByUserWMiddlegameWMatchesViewModel() async {
    _firstUniqueIdByUserWMiddlegameWMatchesViewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          build();
        });
    final result = await _firstUniqueIdByUserWMiddlegameWMatchesViewModel.init();
    debugPrint("FirstUniqueIdByUserWMiddlegameWMatchesView: $result");
    _firstUniqueIdByUserWMiddlegameWMatchesViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}

final class DataForTimerView extends BaseDataForNamed<EnumDataForTimerView> {
  String formattedElapsedTimeInMilliseconds;

  DataForTimerView(super.isLoading,this.formattedElapsedTimeInMilliseconds);

  @override
  EnumDataForTimerView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForTimerView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForTimerView.exception;
    }
    return EnumDataForTimerView.success;
  }
}

enum EnumDataForTimerView {
  isLoading,
  exception,
  success
}

final class TimerViewModel extends BaseNamedViewModel<DataForTimerView,DefaultStreamWState<DataForTimerView>> {
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _updateEEIntsEEWhereElapsedTimeInMillisecondsEEFromIntsEEParameterTempCacheService =
  UpdateEEIntsEEWhereElapsedTimeInMillisecondsEEFromIntsEEParameterTempCacheService();
  final _startListeningAndCancelListeningEEBoolsEEWhereIsStopTimerEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEBoolsEEWhereIsStopTimerEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription();

  // NamedUtility
  final _timerUtility = TimerUtility();

  TimerViewModel() : super(DefaultStreamWState(DataForTimerView(
      false,
      "00:00.00")));

  @override
  void dispose() {
    super.dispose();
    _startListeningAndCancelListeningEEBoolsEEWhereIsStopTimerEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .cancelListeningBoolsWhereIsStopTimerParameterStreamSubscription();
    _timerUtility.dispose();
  }

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  void listeningStreamsTempCacheService() {
    _startListeningAndCancelListeningEEBoolsEEWhereIsStopTimerEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .startListeningBoolsWhereIsStopTimerFromCallbackParametersTempCacheServiceAndStreamSubscription((Result<Bools> resultBools)
    {
      _timerUtility.stopTimerParametersTwo();
      notifyStreamDataForNamedParameterNamedStreamWState();
    });
  }

  void startTimerToTimerUtility() {
    _timerUtility.startTimerFromCallbackParametersTwo((int elapsedTimeInMilliseconds, String formattedElapsedTimeInMilliseconds) {
      _updateEEIntsEEWhereElapsedTimeInMillisecondsEEFromIntsEEParameterTempCacheService
          .updateIntsWhereElapsedTimeInMillisecondsFromIntsParameterTempCacheService(Ints(elapsedTimeInMilliseconds));
      getDataForNamedParameterNamedStreamWState
          .formattedElapsedTimeInMilliseconds = formattedElapsedTimeInMilliseconds;
      notifyStreamDataForNamedParameterNamedStreamWState();
    });
  }
}

final class TimerView {
  late final TimerViewModel _timerViewModel;

  // Override
  void initState() {
    _timerViewModel = TimerViewModel();
    _initParameterTimerViewModel();
  }

  // Override
  void dispose() {
    _timerViewModel.dispose();
  }

  // Override
  void build() {
    final dataForNamedParameterNamedStreamWState = _timerViewModel
        .getDataForNamedParameterNamedStreamWState;
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForTimerView.isLoading:
        debugPrint("Build: IsLoading");
        break;
      case EnumDataForTimerView.exception:
        debugPrint("Build: Exception(${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException})");
        break;
      case EnumDataForTimerView.success:
        debugPrint("Timer: ${dataForNamedParameterNamedStreamWState.formattedElapsedTimeInMilliseconds}");
        break;
      default:
        break;
    }
  }

  Future<void> _initParameterTimerViewModel() async {
    _timerViewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          build();
        });
    _timerViewModel.listeningStreamsTempCacheService();
    final result = await _timerViewModel.init();
    debugPrint("TimerView: $result");
    _timerViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
    _timerViewModel.startTimerToTimerUtility();
  }
}