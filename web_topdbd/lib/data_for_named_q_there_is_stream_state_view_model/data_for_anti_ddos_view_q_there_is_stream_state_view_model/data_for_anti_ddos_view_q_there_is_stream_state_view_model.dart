import 'package:library_architecture_mvvm_modify/base_data_for_named_q_there_is_stream_state_view_model/base_data_for_named_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_view/data_for_anti_ddos_view.dart';

final class DataForAntiDDosViewQThereIsStreamStateViewModel<T extends DataForAntiDDosView>
    extends BaseDataForNamedQThereIsStreamStateViewModel<T>
{
  DataForAntiDDosViewQThereIsStreamStateViewModel(super.iInitializedStreamStateDataForNamed);

  Stream<T?>? get getStreamDataForAntiDDosView {
    return getStreamDataForNamed;
  }

  T? get getDataForAntiDDosView {
    return getDataForNamed;
  }

  void notifyStreamDataForAntiDDosView() {
    notifyStreamDataForNamed();
  }
}