import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class BanMapsWhereMatches extends BaseModel {
  final String name;

  const BanMapsWhereMatches(this.name) : super(name);

  @override
  BanMapsWhereMatches get getCloneModel => BanMapsWhereMatches(name);
}