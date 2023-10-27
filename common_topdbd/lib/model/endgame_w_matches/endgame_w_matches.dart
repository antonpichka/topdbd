import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class EndgameWMatches extends BaseModel {
  final bool isCompleted;
  final int resultRatingPointsWFirstUniqueIdByUser;
  final int resultRatingPointsWSecondUniqueIdByUser;

  const EndgameWMatches(this.isCompleted, this.resultRatingPointsWFirstUniqueIdByUser, this.resultRatingPointsWSecondUniqueIdByUser) : super("$isCompleted");

  @override
  EndgameWMatches get getClone => EndgameWMatches(isCompleted,resultRatingPointsWFirstUniqueIdByUser,resultRatingPointsWSecondUniqueIdByUser);

  @override
  String toString() {
    return "EndgameWMatches(isCompleted: $isCompleted, "
        "resultRatingPointsWFirstUniqueIdByUser: $resultRatingPointsWFirstUniqueIdByUser, "
        "resultRatingPointsWSecondUniqueIdByUser: $resultRatingPointsWSecondUniqueIdByUser)";
  }
}