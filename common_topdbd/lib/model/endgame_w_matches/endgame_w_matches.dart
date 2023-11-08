import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class EndgameWMatches extends BaseModel {
  final int resultRatingPointsWFirstUniqueIdByUser;
  final int resultRatingPointsWSecondUniqueIdByUser;

  const EndgameWMatches(this.resultRatingPointsWFirstUniqueIdByUser, this.resultRatingPointsWSecondUniqueIdByUser) : super("$resultRatingPointsWFirstUniqueIdByUser");

  @override
  EndgameWMatches get getClone => EndgameWMatches(resultRatingPointsWFirstUniqueIdByUser,resultRatingPointsWSecondUniqueIdByUser);

  @override
  String toString() {
    return "EndgameWMatches(resultRatingPointsWFirstUniqueIdByUser: $resultRatingPointsWFirstUniqueIdByUser, "
        "resultRatingPointsWSecondUniqueIdByUser: $resultRatingPointsWSecondUniqueIdByUser)";
  }
}