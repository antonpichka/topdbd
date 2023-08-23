import 'package:library_architecture_mvvm_modify/base_data_for_named_q_there_is_stream_state_view_model/base_data_for_named_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/data_for_anti_ddos_system_view.dart';

final class DataForAntiDDosSystemViewQThereIsStreamStateViewModel<T extends DataForAntiDDosSystemView>
    extends BaseDataForNamedQThereIsStreamStateViewModel<T>
{
  DataForAntiDDosSystemViewQThereIsStreamStateViewModel(super.iInitializedStreamStateDataForNamed);

  Stream<T?>? get getStreamDataForAntiDDosSystemView {
    return getStreamDataForNamed;
  }

  T? get getDataForAntiDDosSystemView {
    return getDataForNamed;
  }

  void notifyStreamDataForAntiDDosSystemView() {
    notifyStreamDataForNamed();
  }
}