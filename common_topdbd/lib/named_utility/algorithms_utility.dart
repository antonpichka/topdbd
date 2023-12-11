import 'dart:math' as math;
import 'package:common_topdbd/model/country_rd/country_rd.dart';
import 'package:common_topdbd/named_utility/enum_win_number_user.dart';
import 'package:common_topdbd/named_utility/ready_data_utility.dart';
import 'package:meta/meta.dart';

@immutable
final class AlgorithmsUtility {
  const AlgorithmsUtility._();

  static List<String> getListStringWhereSearchAlgorithmByPrefixWAllCharactersThatWereEnteredFromTwo(List<String> listString,String prefix) {
    final listStringToAddAllWordsWThePrefix = List.empty(growable: true);
    if(listString.isEmpty) {
      return List.empty(growable: true);
    }
    /// 1 Step
    for(String itemString in listString) {
      for(int i = 0; i < itemString.length; i++) {
        if(prefix.length < (i+1)) {
          break;
        }
        bool isNotAddedElement = true;
        for(int j = 0; j < prefix.length; j++) {
          if(prefix[j] == itemString[i]) {
            isNotAddedElement = false;
            break;
          }
        }
        if(isNotAddedElement) {
          continue;
        }
        bool isHasElement = false;
        for(String itemStringToAddAllWordsWThePrefix in listStringToAddAllWordsWThePrefix) {
          if(itemStringToAddAllWordsWThePrefix == itemString) {
            isHasElement = true;
            break;
          }
        }
        if(isHasElement) {
          break;
        }
        listStringToAddAllWordsWThePrefix.add(itemString);
        break;
      }
    }
    /// 2 Step
    final Map<String,int> mapPrefixAndImportancePrefix = {};
    for(int i = 0; i < prefix.length; i++) {
      final importancePrefix = prefix.length - i;
      mapPrefixAndImportancePrefix[prefix[i]] = importancePrefix;
    }
    /// 3 Step
    final mapItemStringToAddAllWordsWThePrefixAndImportancePrefix = {};
    for(String itemStringToAddAllWordsWThePrefix in listStringToAddAllWordsWThePrefix) { // oolvoooeooo
      final listSymbolWStringToAddAllWordsWThePrefix = List.empty(growable: true);
      int iterationCombinationOfIdenticalSymbols = 0; // 1,2
      for(int i = 0; i < itemStringToAddAllWordsWThePrefix.length; i++) { // 0,1,2
        for(MapEntry<String,int> itemEntries in mapPrefixAndImportancePrefix.entries) { // o,r
          if(itemEntries.key != itemStringToAddAllWordsWThePrefix[i]) {
            continue;
          }
          if(!mapItemStringToAddAllWordsWThePrefixAndImportancePrefix.containsKey(itemStringToAddAllWordsWThePrefix)) {
            mapItemStringToAddAllWordsWThePrefixAndImportancePrefix[itemStringToAddAllWordsWThePrefix] = itemEntries.value;
            listSymbolWStringToAddAllWordsWThePrefix.add(itemStringToAddAllWordsWThePrefix[i]);
            iterationCombinationOfIdenticalSymbols++;
            break;
          }
          bool isHasElement = false;
          for(String itemSymbolWStringToAddAllWordsWThePrefix in listSymbolWStringToAddAllWordsWThePrefix) {
            if(itemSymbolWStringToAddAllWordsWThePrefix == itemStringToAddAllWordsWThePrefix[i]) {
              isHasElement = true;
              break;
            }
          }
          final combinationOfIdenticalSymbols = iterationCombinationOfIdenticalSymbols == i
              ? math.pow(iterationCombinationOfIdenticalSymbols,2).toInt()
              : 0;
          final importancePrefix = isHasElement
              ? (mapItemStringToAddAllWordsWThePrefixAndImportancePrefix[itemStringToAddAllWordsWThePrefix] ?? 0) + combinationOfIdenticalSymbols // 3
              : (mapItemStringToAddAllWordsWThePrefixAndImportancePrefix[itemStringToAddAllWordsWThePrefix] ?? 0) + itemEntries.value + combinationOfIdenticalSymbols;
          mapItemStringToAddAllWordsWThePrefixAndImportancePrefix[itemStringToAddAllWordsWThePrefix] = importancePrefix;
          listSymbolWStringToAddAllWordsWThePrefix.add(itemStringToAddAllWordsWThePrefix[i]);
          iterationCombinationOfIdenticalSymbols++;
          break;
        }
      }
    }
    /// 4 Step
    final List<String> listStringWResult = List.empty(growable: true);
    final length = mapItemStringToAddAllWordsWThePrefixAndImportancePrefix.length;
    while(listStringWResult.length < length) {
      int index = 0;
      int first = mapItemStringToAddAllWordsWThePrefixAndImportancePrefix.values.first;
      for(int i = 1; i < mapItemStringToAddAllWordsWThePrefixAndImportancePrefix.length; i++) {
        final itemImportancePrefix = mapItemStringToAddAllWordsWThePrefixAndImportancePrefix.values.toList()[i];
        if(itemImportancePrefix > first) {
          first = itemImportancePrefix;
          index = i;
          continue;
        }
      }
      final elementAt = mapItemStringToAddAllWordsWThePrefixAndImportancePrefix.entries.elementAt(index);
      mapItemStringToAddAllWordsWThePrefixAndImportancePrefix.removeWhere((key,value)=> key == elementAt.key);
      listStringWResult.add(elementAt.key);
    }
    return listStringWResult;
  }

  static String getStringWhereRandomNumbersFromNumberOfScrolls(int numberOfScrolls) {
    String result = "";
    final rng = math.Random();
    for (var i = 0; i < numberOfScrolls; i++) {
      result += "${rng.nextInt(9)}";
    }
    return result;
  }

  static String getStringWhereProcessedNameRouteFromRawNameRoute(String rawNameRoute) {
    String nameRoute = "";
    for(String itemRawNameRoute in rawNameRoute.split("")) {
      if(itemRawNameRoute == "(") {
        break;
      }
      nameRoute += itemRawNameRoute;
    }
    if(nameRoute.length == 1) {
      return nameRoute;
    }
    return nameRoute[0] == "#"
        ? nameRoute
        : "#$nameRoute";
  }

  static String getStringWhereFormattedFromDateTime(DateTime dateTime) {
    return "${dateTime.year}-${dateTime.month >= 10
        ? dateTime.month
        : "0${dateTime.month}"}-${dateTime.day >= 10
        ? dateTime.day
        : "0${dateTime.day}"}";
  }

  static int getInterestFormulaFromNumberAndFindPercent(int number, int findPercent) {
    return ((number / 100) * findPercent).toInt();
  }

  static int getEvenWhereInterestFormulaFromNumberAndFindPercent(int number, int findPercent) {
    final interestFormula = getInterestFormulaFromNumberAndFindPercent(number, findPercent);
    if(!interestFormula.isEven) {
      return interestFormula - 1;
    }
    return interestFormula;
  }

  static int getEloWhereCalculationWFirstUserFromKFactorAndRatingFirstUserAndRatingSecondUserAndEnumWinNumberUser(int kFactor,int ratingFirstUser,int ratingSecondUser,EnumWinNumberUser enumWinNumberUser) {
    final n = ratingFirstUser >= ratingSecondUser
        ? ratingSecondUser
        : ratingFirstUser;
    final score = enumWinNumberUser == EnumWinNumberUser.winFirstUser ? 1.0 : 0.0;
    final diff = ratingFirstUser - ratingSecondUser;
    final exponent = -(diff / n);
    final expected = 1.0 / (1.0 + math.pow(10.0, exponent));
    final resultRatingFirstUser = ratingFirstUser + kFactor * (score - expected);
    return resultRatingFirstUser.toInt();
  }

  static int getEloWhereCalculationWSecondUserFromKFactorAndRatingFirstUserAndRatingSecondUserAndEnumWinNumberUser(int kFactor,int ratingFirstUser,int ratingSecondUser,EnumWinNumberUser enumWinNumberUser) {
    final n = ratingFirstUser >= ratingSecondUser
        ? ratingSecondUser
        : ratingFirstUser;
    final score = enumWinNumberUser == EnumWinNumberUser.winSecondUser ? 0.0 : 1.0;
    final diff = ratingFirstUser - ratingSecondUser;
    final exponent = -(diff / n);
    final expected = 1.0 / (1.0 + math.pow(10.0, -exponent));
    final resultRatingSecondUser = ratingSecondUser + kFactor * ((1.0 - score) - expected);
    return resultRatingSecondUser.toInt();
  }

  static CountryRD getCountryRDWhereListCountryRDWReadyDataUtilityFromCountryAbbreviation(String countryAbbreviation) {
    CountryRD? countryRD;
    final listCountryRD = ReadyDataUtility.getListCountryRD;
    for(CountryRD itemModel in listCountryRD.listModel) {
      if(itemModel.countryAbbreviation != countryAbbreviation) {
        continue;
      }
      countryRD = itemModel.getClone;
    }
    return countryRD ?? listCountryRD.listModel.last;
  }

  static int getFormulaPercentageDifferenceButDistanceTraveledFromSmallerNumberAndLargerNumber(int smallerNumber, int largerNumber) {
    if(smallerNumber < 0 || largerNumber < 0) {
      return 0;
    }
    final result = ((smallerNumber/largerNumber-1)*100).toInt();
    return result < 0 ? 100-(-result) : 100-result;
  }

  static int getInReverseOrderWhereFormulaPercentageDifferenceButDistanceTraveledFromTwo(int smallerNumber, int largerNumber) {
    return -getFormulaPercentageDifferenceButDistanceTraveledFromSmallerNumberAndLargerNumber(smallerNumber,largerNumber)+100;
  }

  static int getDifferenceInDaysFromStartDateTimeAndEndDateTime(DateTime startDateTime,DateTime endDateTime) {
    return (endDateTime.difference(startDateTime).inHours / 24).round();
  }
}