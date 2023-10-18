import 'package:common_topdbd/named_utility/ready_data_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/data_for_app_view.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_status_notify_list_init_stream.dart';

@immutable
final class InitializedDefaultStreamStateQDataForAppView extends BaseInitializedNamedStreamStateQDataForNamed<DataForAppView> {
  @override
  BaseNamedStreamStateQDataForNamed<DataForAppView> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<DataForAppView>(DataForAppView(ReadyDataUtility.getListInitStream,EnumStatusNotifyListInitStream.noNotify,"",false,false,"","",false,false));
}