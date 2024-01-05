import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:web_topdbd/named_utility/algorithms_utility.dart' as web_au;
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
    return web_au.AlgorithmsUtility.getStringWhereFormatByDateFormatFromDateTime(startOfSeasonTimeBySeason);
  }

  String get getStringWhereFormattedParameterEndOfSeasonTimeBySeason {
    return web_au.AlgorithmsUtility.getStringWhereFormatByDateFormatFromDateTime(endOfSeasonTimeBySeason);
  }

  int get getIntWhereInReverseOrderWFormulaPercentageDifferenceButDistanceTraveledParametersThree {
    final differenceInDaysFromStartDateTimeAndEndDateTime = AlgorithmsUtility.getDifferenceInDaysFromStartDateTimeAndEndDateTime(startOfSeasonTimeBySeason,endOfSeasonTimeBySeason);
    final differenceInDaysFromStartDateTimeAndEndDateTimeFIRST = AlgorithmsUtility.getDifferenceInDaysFromStartDateTimeAndEndDateTime(todayTime,endOfSeasonTimeBySeason);
    final inReverseOrderWhereFormulaPercentageDifferenceButDistanceTraveledFromTwo = AlgorithmsUtility
        .getInReverseOrderWhereFormulaPercentageDifferenceButDistanceTraveledFromTwo(differenceInDaysFromStartDateTimeAndEndDateTimeFIRST,differenceInDaysFromStartDateTimeAndEndDateTime);
    return inReverseOrderWhereFormulaPercentageDifferenceButDistanceTraveledFromTwo;
  }

  double get getDoubleWhereIntWFormulaWPercentageDifferenceButDistanceTraveled {
    final intWhereInReverseOrderWFormulaPercentageDifferenceButDistanceTraveledParametersThree = getIntWhereInReverseOrderWFormulaPercentageDifferenceButDistanceTraveledParametersThree;
    if(intWhereInReverseOrderWFormulaPercentageDifferenceButDistanceTraveledParametersThree <= 0) {
      return 0.0;
    }
    if(intWhereInReverseOrderWFormulaPercentageDifferenceButDistanceTraveledParametersThree >= 100) {
      return 1.0;
    }
    return intWhereInReverseOrderWFormulaPercentageDifferenceButDistanceTraveledParametersThree / 100;
  }
}