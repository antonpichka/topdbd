import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class BanManiacWhereMatches extends BaseModel {
  final String name;

  const BanManiacWhereMatches(this.name) : super(name);

  @override
  BanManiacWhereMatches get getCloneModel => BanManiacWhereMatches(name);

  @override
  String toString() {
    return name;
  }
}