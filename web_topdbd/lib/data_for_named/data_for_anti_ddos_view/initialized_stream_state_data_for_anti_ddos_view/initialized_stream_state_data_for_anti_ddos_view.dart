import 'package:library_architecture_mvvm_modify/base_data_for_named/interface_initialized_stream_state_data_for_named/i_initialized_stream_state_data_for_named.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_state_data_for_named/default_stream_state_data_for_named.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_state_data_for_named/i_stream_state_data_for_named.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_view/data_for_anti_ddos_view.dart';

final class InitializedStreamStateDataForAntiDDosView
    implements IInitializedStreamStateDataForNamed<DataForAntiDDosView>
{
  @override
  IStreamStateDataForNamed<DataForAntiDDosView> get getStreamStateDataForNamed => DefaultStreamStateDataForNamed<DataForAntiDDosView>(
      DataForAntiDDosView(false,"",false,""));
}