import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
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

  int get getNumberOfBannedManiacsParametersListManiacWMatchBalanceAndNumberOfRounds  {
    return listManiacWMatchBalance.listModel.length - numberOfRounds;
  }

  int get getNumberOfBannedManiacsInTheFirstStageWhereEvenAndInterestFormula  {
    return AlgorithmsUtility.getEvenWhereInterestFormulaFromNumberAndFindPercent(getNumberOfBannedManiacsParametersListManiacWMatchBalanceAndNumberOfRounds, 50);
  }
}