import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_pre_verified_user_system_view/data_for_pre_verified_user_system_view.dart';

final class DataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel<T extends DataForPreVerifiedUserSystemView> extends BaseDataForNamedQThereIsStreamStateViewModel<T> {
  DataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<T?> get getStreamDataForPreVerifiedUserSystemView {
    return getStreamDataForNamed;
  }

  T? get getDataForPreVerifiedUserSystemView {
    return getDataForNamed;
  }

  void notifyStreamDataForPreVerifiedUserSystemView() {
    notifyStreamDataForNamed();
  }
}