import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Init extends BaseModel {
  final bool isInit;

  const Init(this.isInit) : super("$isInit");

  @override
  Init get getClone => Init(isInit);
}