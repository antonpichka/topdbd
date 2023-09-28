import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_pre_verified_user_system_view/data_for_pre_verified_user_system_view.dart';

@immutable
final class InitializedDefaultStreamStateQDataForPreVerifiedUserSystemView extends BaseInitializedNamedStreamStateQDataForNamed<DataForPreVerifiedUserSystemView> {
  @override
  BaseNamedStreamStateQDataForNamed<DataForPreVerifiedUserSystemView> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<DataForPreVerifiedUserSystemView>(DataForPreVerifiedUserSystemView(true,""));
}