import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:test/test.dart';

void main() {
  test("getListStringWhereSearchAlgorithmByPrefixWAllCharactersThatWereEnteredFromTwo(List<String> listString,String prefix)", () {
    final listString = ["apple", "oolvoooeooo", "lange", "banana", "orange", "grape"];
    final prefix = "or";
    expect(
        AlgorithmsUtility.getListStringWhereSearchAlgorithmByPrefixWAllCharactersThatWereEnteredFromTwo(listString,prefix),
        ["orange","oolvoooeooo","grape"]);
  });
  test("getStringWhereProcessedNameRouteFromRawNameRoute()", () {
    expect(AlgorithmsUtility.getStringWhereProcessedNameRouteFromRawNameRoute("/(error)"), "/");
    expect(AlgorithmsUtility.getStringWhereProcessedNameRouteFromRawNameRoute("/top_players(error)"), "#/top_players");
    expect(AlgorithmsUtility.getStringWhereProcessedNameRouteFromRawNameRoute("#/user/{Vicar32}(error)"), "#/user/{Vicar32}");
  });

  test("getFormulaPercentageDifferenceButDistanceTraveledFromSmallerNumberAndLargerNumber(int smallerNumber, int largerNumber)", () {
    expect(AlgorithmsUtility.getFormulaPercentageDifferenceButDistanceTraveledFromSmallerNumberAndLargerNumber(8,10), 81);
    expect(AlgorithmsUtility.getFormulaPercentageDifferenceButDistanceTraveledFromSmallerNumberAndLargerNumber(5,10), 50);
  });
  test("getInReverseOrderWhereFormulaPercentageDifferenceButDistanceTraveledFromTwo(int smallerNumber, int largerNumber)", () {
    expect(AlgorithmsUtility.getInReverseOrderWhereFormulaPercentageDifferenceButDistanceTraveledFromTwo(8,10), 19);
    expect(AlgorithmsUtility.getInReverseOrderWhereFormulaPercentageDifferenceButDistanceTraveledFromTwo(5,10), 50);
  });
}
