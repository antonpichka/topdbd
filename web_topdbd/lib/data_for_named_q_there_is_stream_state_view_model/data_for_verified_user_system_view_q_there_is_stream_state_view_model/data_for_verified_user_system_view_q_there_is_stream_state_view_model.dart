import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_verified_user_system_view/data_for_verified_user_system_view.dart';

final class DataForVerifiedUserSystemViewQThereIsStreamStateViewModel<T extends DataForVerifiedUserSystemView> extends BaseDataForNamedQThereIsStreamStateViewModel<T> {
  DataForVerifiedUserSystemViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<T?> get getStreamDataForVerifiedUserSystemView {
    return getStreamDataForNamed;
  }

  T? get getDataForVerifiedUserSystemView {
    return getDataForNamed;
  }

  void notifyStreamDataForVerifiedUserSystemView() {
    notifyStreamDataForNamed();
  }
}