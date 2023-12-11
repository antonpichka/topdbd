import 'package:meta/meta.dart';

@immutable
abstract interface class ITopPlayersViewModel {
  const ITopPlayersViewModel();

  void setValueToDropdownButton(String? value);
  void refreshListTopPlayers();
}