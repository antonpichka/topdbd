import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class IPAddress extends BaseModel {
  final String ip;
  final String nameCountry;

  const IPAddress(this.ip,this.nameCountry) : super(ip);

  @override
  IPAddress get getCloneModel => IPAddress(ip,nameCountry);
}