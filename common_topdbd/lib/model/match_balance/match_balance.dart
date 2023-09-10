import 'package:common_topdbd/model/maniac_where_match_balance/list_maniac_where_match_balance.dart';
import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class MatchBalance extends BaseModel {
  final int seasonNumberBySeason;
  final int numberOfRounds;
  final bool isStagePick;
  final ListManiacWhereMatchBalance listManiacWhereMatchBalance;

  const MatchBalance(this.seasonNumberBySeason,this.numberOfRounds,this.isStagePick,this.listManiacWhereMatchBalance) : super("$seasonNumberBySeason");

  @override
  MatchBalance get getCloneModel => MatchBalance(seasonNumberBySeason, numberOfRounds,isStagePick, listManiacWhereMatchBalance.getCloneListModel);

  int get getTotalNumberOfBannedManiacsInTheFirstStageParametersLengthByListModelByListManiacWhereMatchBalanceAndNumberOfRounds  {
    return AlgorithmsUtility.getInterestFormulaFromParameterInt(_getTotalNumberOfBannedManiacsParametersLengthByListModelByListManiacWhereMatchBalanceAndNumberOfRounds, 50);
  }

  int get getTotalNumberOfPickManiacsInTheFirstStageParameterNumberOfRounds {
    return numberOfRounds - 1;
  }

  int get _getTotalNumberOfBannedManiacsParametersLengthByListModelByListManiacWhereMatchBalanceAndNumberOfRounds  {
    return listManiacWhereMatchBalance.listModel.length - numberOfRounds;
  }

  bool isNotStagePickParameterIsStagePick() {
    return !isStagePick;
  }
}