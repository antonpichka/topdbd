import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/anti_ddos_system_vm/data_for_anti_ddos_system_view.dart';
import 'package:web_topdbd/named_vm/anti_ddos_system_vm/i_anti_ddos_system_view_model.dart';

@immutable
final class AntiDDosSystemViewModel extends BaseNamedViewModel<DataForAntiDDosSystemView,DefaultStreamWState<DataForAntiDDosSystemView>>
    implements IAntiDDosSystemViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  AntiDDosSystemViewModel() : super(DefaultStreamWState(DataForAntiDDosSystemView(true,0,"")));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void startTimer() {
    // TODO: implement startTimer
  }
}