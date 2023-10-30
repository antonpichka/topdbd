import 'dart:math' as math;
import 'package:common_topdbd/named_utility/enum_win_number_user.dart';
import 'package:meta/meta.dart';

@immutable
final class AlgorithmsUtility {
  const AlgorithmsUtility._();

  static String getStringWhereRandomNumbersFromNumberOfScrolls(int numberOfScrolls) {
    String result = "";
    final rng = math.Random();
    for (var i = 0; i < numberOfScrolls; i++) {
      result += "${rng.nextInt(9)}";
    }
    return result;
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
    final expectedOne = 1.0 / (1.0 + math.pow(10.0, exponent));
    final resultRatingFirstUser = ratingFirstUser + kFactor * (score - expectedOne);
    return resultRatingFirstUser.toInt();
  }

  static int getEloWhereCalculationWSecondUserFromKFactorAndRatingFirstUserAndRatingSecondUserAndEnumWinNumberUser(int kFactor,int ratingFirstUser,int ratingSecondUser,EnumWinNumberUser enumWinNumberUser) {
    final n = ratingFirstUser >= ratingSecondUser
        ? ratingSecondUser
        : ratingFirstUser;
    final score = enumWinNumberUser == EnumWinNumberUser.winSecondUser ? 0.0 : 1.0;
    final diff = ratingFirstUser - ratingSecondUser;
    final exponent = -(diff / n);
    final expectedTwo = 1.0 / (1.0 + math.pow(10.0, -exponent));
    final resultRatingSecondUser = ratingSecondUser + kFactor * ((1.0 - score) - expectedTwo);
    return resultRatingSecondUser.toInt();
  }
}