import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class IPAddress extends BaseModel {
  final String? ip;
  final String? nameCountry;

  IPAddress.success(this.ip,this.nameCountry) : super.success(ip.toString());
  IPAddress.exception(super.exception) :
        ip = null,
        nameCountry = null,
        super.exception();

  @override
  IPAddress get getCloneModel => IPAddress.success(ip,nameCountry);
}