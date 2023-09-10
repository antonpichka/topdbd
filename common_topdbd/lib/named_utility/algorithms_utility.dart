import 'dart:math';
import 'package:meta/meta.dart';

@immutable
final class AlgorithmsUtility {
  const AlgorithmsUtility._();

  static String getRandomNumbersFromNumberOfScrollsParameterString(int? numberOfScrolls) {
    String result = "";
    final rng = Random();
    for (var i = 0; i < (numberOfScrolls ?? 0); i++) {
      result += "${rng.nextInt(9)}";
    }
    return result;
  }

  static int getInterestFormulaFromParameterInt(int number, int findPercent) {
    return ((number / 100) * findPercent).toInt();
  }
}