import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class BanManiacWhereMatches extends BaseModel {
  final String name;
  final String uniqueIdByUser;

  const BanManiacWhereMatches(this.name,this.uniqueIdByUser) : super(name);

  @override
  BanManiacWhereMatches get getClone => BanManiacWhereMatches(name,uniqueIdByUser);

  @override
  String toString() {
    return name;
  }
}