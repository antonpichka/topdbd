import 'package:meta/meta.dart';

@immutable
abstract interface class ISettingsNumberOfRoundsToMatchBalanceViewModel {
  const ISettingsNumberOfRoundsToMatchBalanceViewModel();

  void setNumberOfRoundsByMatchBalance(String strNumberOfRoundsByMatchBalance);
}