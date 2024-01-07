import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/anti_ddos_system_vm/enum_data_for_anti_ddos_system_view.dart';

final class DataForAntiDDosSystemView extends BaseDataForNamed<EnumDataForAntiDDosSystemView> {
  int expectedSeconds;
  String showSeconds;

  DataForAntiDDosSystemView(super.isLoading,this.expectedSeconds,this.showSeconds) : super();

  @override
  EnumDataForAntiDDosSystemView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForAntiDDosSystemView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForAntiDDosSystemView.exception;
    }
    if(expectedSeconds > 0) {
      return EnumDataForAntiDDosSystemView.waiting;
    }
    return EnumDataForAntiDDosSystemView.success;
  }

  void setWhereSubtractionAndOneOperationFromElapsedTimeInSecondsParametersTwo(int elapsedTimeInSeconds) {
    showSeconds = "${(expectedSeconds - elapsedTimeInSeconds)}";
    if(elapsedTimeInSeconds < expectedSeconds) {
      return;
    }
    expectedSeconds = expectedSeconds - elapsedTimeInSeconds;
  }

  bool isWhereLessWEqualZeroParameterExpectedSeconds() {
    return expectedSeconds <= 0;
  }
}