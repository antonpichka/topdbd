import 'package:common_topdbd/model/round_w_matches/list_round_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class MiddlegameWMatches extends BaseModel {
  final ListRoundWMatches listRoundWMatches;

  const MiddlegameWMatches(this.listRoundWMatches) : super("$listRoundWMatches");

  @override
  MiddlegameWMatches get getClone => MiddlegameWMatches(listRoundWMatches.getClone);
}