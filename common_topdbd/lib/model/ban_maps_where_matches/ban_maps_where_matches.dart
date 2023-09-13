import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class BanMapsWhereMatches extends BaseModel {
  final String name;
  final String uniqueIdByUser;

  const BanMapsWhereMatches(this.name,this.uniqueIdByUser) : super(name);

  @override
  BanMapsWhereMatches get getCloneModel => BanMapsWhereMatches(name,uniqueIdByUser);

  @override
  String toString() {
    return "$name (UniqueIdByUser: $uniqueIdByUser)";
  }
}