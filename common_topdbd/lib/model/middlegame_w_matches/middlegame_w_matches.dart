import 'package:common_topdbd/model/round_w_matches/list_round_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class MiddlegameWMatches extends BaseModel {
  final bool isCompleted;
  final ListRoundWMatches listRoundWMatches;

  const MiddlegameWMatches(this.isCompleted,this.listRoundWMatches) : super("$isCompleted");

  @override
  MiddlegameWMatches get getClone => MiddlegameWMatches(isCompleted,listRoundWMatches.getClone);

  @override
  String toString() {
    return "MiddlegameWMatches(isCompleted: $isCompleted, "
        "listRoundWMatches: ${listRoundWMatches.listModel})";
  }
}