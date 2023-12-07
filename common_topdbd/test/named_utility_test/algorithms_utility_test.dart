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
}
