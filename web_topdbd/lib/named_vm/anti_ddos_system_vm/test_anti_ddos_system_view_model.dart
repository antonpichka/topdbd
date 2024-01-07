import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/named_utility/timer_w_seconds_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/anti_ddos_system_vm/data_for_anti_ddos_system_view.dart';
import 'package:web_topdbd/named_vm/anti_ddos_system_vm/i_anti_ddos_system_view_model.dart';

@immutable
final class TestAntiDDosSystemViewModel extends BaseNamedViewModel<DataForAntiDDosSystemView,DefaultStreamWState<DataForAntiDDosSystemView>>
    implements IAntiDDosSystemViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility
  final _timerWSecondsUtility = TimerWSecondsUtility();

  TestAntiDDosSystemViewModel() : super(DefaultStreamWState(DataForAntiDDosSystemView(true,0,"")));

  @override
  void dispose() {
    _timerWSecondsUtility.dispose();
    super.dispose();
  }

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.expectedSeconds = 10;
    getDataForNamedParameterNamedStreamWState.showSeconds = "10";
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void startTimer() {
    _timerWSecondsUtility.startTimerFromCallbackParametersTwo((elapsedTimeInSeconds) {
      final isWhereLessWEqualZeroParameterExpectedSeconds = getDataForNamedParameterNamedStreamWState
          .isWhereLessWEqualZeroParameterExpectedSeconds();
      if(isWhereLessWEqualZeroParameterExpectedSeconds) {
        _firstQQStartTimerQQIsWhereLessWEqualZeroParameterExpectedSeconds();
        return;
      }
      getDataForNamedParameterNamedStreamWState.setWhereSubtractionAndOneOperationFromElapsedTimeInSecondsParametersTwo(elapsedTimeInSeconds);
      notifyStreamDataForNamedParameterNamedStreamWState();
    });
  }

  void _firstQQStartTimerQQIsWhereLessWEqualZeroParameterExpectedSeconds() {
    _timerWSecondsUtility.stopTimerParametersTwo();
  }
}