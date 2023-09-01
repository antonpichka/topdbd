import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class AboutMe extends BaseModel {
  final String? uniqueIdByUser;
  final String? codeDBD;
  final String? codeSteam;

  AboutMe.success(this.uniqueIdByUser,this.codeDBD,this.codeSteam) : super.success(uniqueIdByUser);
  AboutMe.exception(super.exception) :
        uniqueIdByUser = null,
        codeDBD = null,
        codeSteam = null,
        super.exception();

  @override
  AboutMe get getCloneModel => AboutMe.success(uniqueIdByUser,codeDBD,codeSteam);
}