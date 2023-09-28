import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ThoseWorks extends BaseModel {
  final bool isThoseWorks;

  const ThoseWorks(this.isThoseWorks) : super("$isThoseWorks");

  @override
  ThoseWorks get getCloneModel => ThoseWorks(isThoseWorks);
}