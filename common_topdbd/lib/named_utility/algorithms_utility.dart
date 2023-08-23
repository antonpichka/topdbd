import 'dart:math';

final class AlgorithmsUtility {
  AlgorithmsUtility._();

  static String getRandomNumbersFromNumberOfScrollsParameterString(int? numberOfScrolls) {
    String result = "";
    final rng = Random();
    for (var i = 0; i < (numberOfScrolls ?? 0); i++) {
      result += "${rng.nextInt(9)}";
    }
    return result;
  }
}