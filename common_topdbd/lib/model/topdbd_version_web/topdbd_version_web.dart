import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/ready_data_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class TOPDBDVersionWeb extends BaseModel {
  final String version;

  const TOPDBDVersionWeb(this.version) : super(version);

  @override
  TOPDBDVersionWeb get getClone => TOPDBDVersionWeb(version);

  @override
  String toString() {
    return "TOPDBDVersionWeb(version: $version)";
  }

  String getExceptionInStringWhereNotEqualsParameterVersion() {
    if(version != ReadyDataUtility.getVersionByTOPDBDVersionWeb.field) {
      return KeysExceptionUtility.tOPDBDVersionWebQQGetExceptionInStringWhereNotEqualsParameterVersion;
    }
    return "";
  }
}