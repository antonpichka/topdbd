import 'package:common_topdbd/model/maniac_where_match_balance/list_maniac_where_match_balance.dart';
import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class MatchBalance extends BaseModel {
  final int seasonNumberBySeason;
  final int numberOfRounds;
  final ListManiacWhereMatchBalance listManiacWhereMatchBalance;

  const MatchBalance(this.seasonNumberBySeason,this.numberOfRounds,this.listManiacWhereMatchBalance) : super("$seasonNumberBySeason");

  @override
  MatchBalance get getClone => MatchBalance(seasonNumberBySeason, numberOfRounds, listManiacWhereMatchBalance.getClone);

  int get getNeedsResultNumberOfBannedManiacsInTheFirstStageParametersListManiacWhereMatchBalanceAndNumberOfRounds  {
    return AlgorithmsUtility.getEvenUsingInterestFormulaFromParameterInt(getNeedsResultNumberOfBannedManiacsParametersListManiacWhereMatchBalanceAndNumberOfRounds, 50);
  }

  int get getNeedsResultNumberOfBannedManiacsParametersListManiacWhereMatchBalanceAndNumberOfRounds  {
    return listManiacWhereMatchBalance.listModel.length - numberOfRounds;
  }
}