import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_verified_user_system_view/data_for_verified_user_system_view.dart';

@immutable
final class DataForVerifiedUserSystemViewQThereIsStreamStateViewModel extends BaseDataForNamedQThereIsStreamStateViewModel<DataForVerifiedUserSystemView> {
  DataForVerifiedUserSystemViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<DataForVerifiedUserSystemView?> get getStreamDataForVerifiedUserSystemView {
    return getStreamDataForNamed;
  }

  DataForVerifiedUserSystemView? get getDataForVerifiedUserSystemView {
    return getDataForNamed;
  }

  void notifyStreamDataForVerifiedUserSystemView() {
    notifyStreamDataForNamed();
  }
}