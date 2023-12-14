import 'package:meta/meta.dart';

@immutable
abstract interface class ITopPlayersViewModel {
  const ITopPlayersViewModel();

  Future<void> setValueToDropdownButton(String? value);
  Future<void> refreshListTopPlayers();
}