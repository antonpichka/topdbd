import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class IPAddressFirestore extends BaseModel {
  final String? uniqueIdByUser;
  final String? ip;

  IPAddressFirestore.success(this.uniqueIdByUser,this.ip) : super.success(uniqueIdByUser);
  IPAddressFirestore.exception(super.exception) :
        uniqueIdByUser = null,
        ip = null,
        super.exception();

  @override
  IPAddressFirestore get getCloneModel => IPAddressFirestore.success(uniqueIdByUser,ip);
}