import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class MatchBalance extends BaseModel {
  final int seasonNumberBySeason;
  final int numberOfRounds;
  final ListManiacWMatchBalance listManiacWMatchBalance;

  const MatchBalance(this.seasonNumberBySeason,this.numberOfRounds,this.listManiacWMatchBalance) : super("$seasonNumberBySeason");

  @override
  MatchBalance get getClone => MatchBalance(seasonNumberBySeason, numberOfRounds, listManiacWMatchBalance.getClone);

  @override
  String toString() {
    return "MatchBalance(seasonNumberBySeason: $seasonNumberBySeason, "
        "numberOfRounds: $numberOfRounds, "
        "ListManiacWMatchBalance: ${listManiacWMatchBalance.listModel})";
  }

  MatchBalance getMatchBalanceFromNewNumberOfRoundsParametersTwo(int newNumberOfRounds) {
    return MatchBalance(
        seasonNumberBySeason,
        newNumberOfRounds,
        listManiacWMatchBalance.getClone);
  }

  String get getExceptionInStringWhereNoCorrectDataParameterListManiacWMatchBalance {
    String exceptionInString = "";
    for(ManiacWMatchBalance itemModel in listManiacWMatchBalance.listModel) {
      String exceptionInStringWItemModel = "";
      final length = itemModel
          .listMapsWMatchBalance
          .listModel
          .length;
      length < 3
          ? exceptionInStringWItemModel += "(ListMaps: length($length) < 3)\n"
          : null;
      length.isEven
          ? exceptionInStringWItemModel += "(ListMaps: the number of maps must be odd. Length($length))\n"
          : null;
      final necessaryLengthPickedManiacPerk = itemModel.necessaryLengthPickedManiacPerk;
      final lengthFIRST = itemModel
          .listManiacPerkWMatchBalance
          .listModel
          .length;
      necessaryLengthPickedManiacPerk < 0
          ? exceptionInStringWItemModel += "(RequiredLengthPickedManiacPerk: $necessaryLengthPickedManiacPerk < 0)\n"
          : null;
      necessaryLengthPickedManiacPerk > lengthFIRST
          ? exceptionInStringWItemModel += "(RequiredLengthPickedManiacPerk And ListManiacPerk: $necessaryLengthPickedManiacPerk > Length($lengthFIRST))\n"
          : null;
      necessaryLengthPickedManiacPerk == 0 && lengthFIRST > 0
          ? exceptionInStringWItemModel += "(RequiredLengthPickedManiacPerk And ListManiacPerk: cannot be zero or less when you have maniac perks ($necessaryLengthPickedManiacPerk). Length($lengthFIRST))\n"
          : null;
      final necessaryLengthPickedSurvivorPerk = itemModel.necessaryLengthPickedSurvivorPerk;
      final lengthSECOND = itemModel
          .listSurvivorPerkWMatchBalance
          .listModel
          .length;
      necessaryLengthPickedSurvivorPerk < 0
          ? exceptionInStringWItemModel += "(RequiredLengthPickedSurvivorPerk: $necessaryLengthPickedSurvivorPerk < 0)"
          : null;
      necessaryLengthPickedSurvivorPerk > lengthSECOND
          ? exceptionInStringWItemModel += "(RequiredLengthPickedSurvivorPerk And ListSurvivorPerk: $necessaryLengthPickedSurvivorPerk > Length($lengthSECOND))\n"
          : null;
      necessaryLengthPickedSurvivorPerk == 0 && lengthSECOND > 0
          ? exceptionInStringWItemModel += "(RequiredLengthPickedSurvivorPerk And ListSurvivorPerk: cannot be zero or less when you have survivor perks ($necessaryLengthPickedSurvivorPerk). Length($lengthSECOND))\n"
          : null;
      if(exceptionInStringWItemModel.isEmpty) {
        continue;
      }
      exceptionInStringWItemModel = "[${itemModel.name}:\n\n$exceptionInStringWItemModel\n]";
      exceptionInString += "\n$exceptionInStringWItemModel";
    }
    return exceptionInString;
  }

  int get getNumberOfBannedManiacsParametersListManiacWMatchBalanceAndNumberOfRounds  {
    return listManiacWMatchBalance.listModel.length - numberOfRounds;
  }

  int get getNumberOfBannedManiacsInTheFirstStageWhereEvenAndInterestFormula  {
    return AlgorithmsUtility.getEvenWhereInterestFormulaFromNumberAndFindPercent(getNumberOfBannedManiacsParametersListManiacWMatchBalanceAndNumberOfRounds, 50);
  }

  bool isWhereEvenWLessThanThreeParameterNumberOfRounds() {
    return numberOfRounds.isEven || numberOfRounds < 3;
  }

  bool isWhereEvenWLessThanSevenParameterListManiacWMatchBalance() {
    final length = listManiacWMatchBalance.listModel.length;
    return length.isEven || length < 7;
  }

  bool isWhereDifferenceBetweenManiacWNumberOfRoundsLessThanFourParametersTwo() {
    return (listManiacWMatchBalance.listModel.length - numberOfRounds) < 4;
  }
}