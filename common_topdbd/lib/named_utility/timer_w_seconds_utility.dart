import 'dart:async';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

// ignore: must_be_immutable
final class TimerWSecondsUtility implements IDispose {
  final Stopwatch _stopwatch;
  Timer? _timer;

  TimerWSecondsUtility()
      : _stopwatch = Stopwatch();

  @override
  void dispose() {
    _stopwatch.reset();
    _timer?.cancel();
  }

  void startTimerFromCallbackParametersTwo(Function(int elapsedTimeInSeconds) callback) {
    if(_stopwatch.isRunning) {
      throw LocalException(
          this,
          EnumGuilty.developer,
          KeysExceptionUtility.timerWSecondsUtilityQQStartTimerFromCallbackParametersTwo,
          "The timer has already started, you cannot start it again");
    }
    _stopwatch.start();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      final elapsedTimeInSeconds = _stopwatch.elapsed.inSeconds;
      callback(elapsedTimeInSeconds);
    });
  }

  void stopTimerParametersTwo() {
    if(!_stopwatch.isRunning) {
      return;
    }
    _stopwatch.stop();
    _timer?.cancel();
  }

}