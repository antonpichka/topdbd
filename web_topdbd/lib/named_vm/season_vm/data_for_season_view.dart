import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/season_vm/enum_data_for_season_view.dart';

final class DataForSeasonView extends BaseDataForNamed<EnumDataForSeasonView> {
  int seasonNumberBySeason;
  DateTime startOfSeasonTimeBySeason;
  DateTime endOfSeasonTimeBySeason;
  DateTime todayTime;

  DataForSeasonView(super.isLoading,this.seasonNumberBySeason,this.startOfSeasonTimeBySeason,this.endOfSeasonTimeBySeason,this.todayTime);

  @override
  EnumDataForSeasonView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForSeasonView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForSeasonView.exception;
    }
    return EnumDataForSeasonView.success;
  }

  String get getStringWhereFormattedParameterStartOfSeasonTimeBySeason {
    return "${startOfSeasonTimeBySeason.year}-${startOfSeasonTimeBySeason.month >= 10
        ? startOfSeasonTimeBySeason.month
        : "0${startOfSeasonTimeBySeason.month}"}-${startOfSeasonTimeBySeason.day >= 10
        ? startOfSeasonTimeBySeason.day
        : "0${startOfSeasonTimeBySeason.day}"}";
  }

  String get getStringWhereFormattedParameterEndOfSeasonTimeBySeason {
    return "${endOfSeasonTimeBySeason.year}-${endOfSeasonTimeBySeason.month >= 10
        ? endOfSeasonTimeBySeason.month
        : "0${endOfSeasonTimeBySeason.month}"}-${endOfSeasonTimeBySeason.day >= 10
        ? endOfSeasonTimeBySeason.day
        : "0${endOfSeasonTimeBySeason.day}"}";
  }

  int get getIntWhereFormulaWPercentageDifferenceButDistanceTraveledParametersThree {
    final differenceInDaysFromStartDateTimeAndEndDateTime = AlgorithmsUtility.getDifferenceInDaysFromStartDateTimeAndEndDateTime(startOfSeasonTimeBySeason,endOfSeasonTimeBySeason);
    final differenceInDaysFromStartDateTimeAndEndDateTimeFIRST = AlgorithmsUtility.getDifferenceInDaysFromStartDateTimeAndEndDateTime(todayTime,endOfSeasonTimeBySeason);
    final formulaWPercentageDifferenceButDistanceTraveledFromSmallerNumberAndLargerNumber = (-AlgorithmsUtility
        .getFormulaWPercentageDifferenceButDistanceTraveledFromSmallerNumberAndLargerNumber(differenceInDaysFromStartDateTimeAndEndDateTimeFIRST,differenceInDaysFromStartDateTimeAndEndDateTime)+100);
    return formulaWPercentageDifferenceButDistanceTraveledFromSmallerNumberAndLargerNumber;
  }

  double get getDoubleWhereIntWFormulaWPercentageDifferenceButDistanceTraveled {
    final intWhereFormulaWPercentageDifferenceButDistanceTraveledParametersThree = getIntWhereFormulaWPercentageDifferenceButDistanceTraveledParametersThree;
    if(intWhereFormulaWPercentageDifferenceButDistanceTraveledParametersThree <= 0) {
      return 0.0;
    }
    if(intWhereFormulaWPercentageDifferenceButDistanceTraveledParametersThree >= 100) {
      return 1.0;
    }
    return intWhereFormulaWPercentageDifferenceButDistanceTraveledParametersThree / 100;
  }
}