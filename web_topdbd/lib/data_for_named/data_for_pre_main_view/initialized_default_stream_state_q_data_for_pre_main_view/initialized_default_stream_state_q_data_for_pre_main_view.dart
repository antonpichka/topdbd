import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_pre_main_view/data_for_pre_main_view.dart';

@immutable
final class InitializedDefaultStreamStateQDataForPreMainView extends BaseInitializedNamedStreamStateQDataForNamed<DataForPreMainView> {
  @override
  BaseNamedStreamStateQDataForNamed<DataForPreMainView> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<DataForPreMainView>(DataForPreMainView(true,""));
}