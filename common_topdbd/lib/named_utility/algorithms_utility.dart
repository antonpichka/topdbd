import 'dart:math' as math;
import 'package:common_topdbd/named_utility/enum_elo_score.dart';
import 'package:meta/meta.dart';

@immutable
final class AlgorithmsUtility {
  const AlgorithmsUtility._();

  static String getRandomNumbersFromNumberOfScrollsParameterString(int numberOfScrolls) {
    String result = "";
    final rng = math.Random();
    for (var i = 0; i < numberOfScrolls; i++) {
      result += "${rng.nextInt(9)}";
    }
    return result;
  }

  static int getInterestFormulaFromParameterInt(int number, int findPercent) {
    return ((number / 100) * findPercent).toInt();
  }

  static int getEvenUsingInterestFormulaFromParameterInt(int number, int findPercent) {
    final interestFormula = getInterestFormulaFromParameterInt(number, findPercent);
    if(!interestFormula.isEven) {
      return interestFormula - 1;
    }
    return interestFormula;
  }

  static int eloForUserWhereFirst(int n,int kFactor,int ratingPlayerOne,int ratingPlayerTwo,EnumEloScore enumEloScore) {
    final score = enumEloScore == EnumEloScore.winForUserWhereFirst ? 1.0 : 0.0;
    final diff = ratingPlayerOne - ratingPlayerTwo;
    final exponent = -(diff / n);
    final expected1 = 1.0 / (1.0 + math.pow(10.0, exponent));
    final resultRatingPlayerOne = ratingPlayerOne + kFactor * (score - expected1);
    return resultRatingPlayerOne.toInt();
  }

  static int eloForUserWhereSecond(int n,int kFactor,int ratingPlayerOne,int ratingPlayerTwo,EnumEloScore enumEloScore) {
    final score = enumEloScore == EnumEloScore.winForUserWhereSecond ? 0.0 : 1.0;
    final diff = ratingPlayerOne - ratingPlayerTwo;
    final exponent = -(diff / n);
    final expected2 = 1.0 / (1.0 + math.pow(10.0, -exponent));
    final resultRatingPlayerTwo = ratingPlayerTwo + kFactor * ((1.0 - score) - expected2);
    return resultRatingPlayerTwo.toInt();
  }
}