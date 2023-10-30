import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class AboutMe extends BaseModel {
  final String uniqueIdByUser;
  final String codeDBD;

  const AboutMe(this.uniqueIdByUser,this.codeDBD) : super(uniqueIdByUser);

  @override
  AboutMe get getClone => AboutMe(uniqueIdByUser,codeDBD);

  @override
  String toString() {
    return "AboutMe(uniqueIdByUser: $uniqueIdByUser, "
        "codeDBD: $codeDBD)";
  }
}