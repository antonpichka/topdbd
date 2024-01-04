import 'package:common_topdbd/model/survivor_perk_w_match_balance/survivor_perk_w_match_balance.dart';
import 'package:meta/meta.dart';

@immutable
abstract interface class ISettingsListSurvivorPerksWMatchBalanceViewModel {
  const ISettingsListSurvivorPerksWMatchBalanceViewModel();

  void listeningTempCacheService();
  void setMinScrollExtent();
  void setMaxScrollExtent();
  void deleteItemToListView(SurvivorPerkWMatchBalance itemSurvivorPerkWMatchBalance);
  void closeBottomSheet();
  void addItemsBottomSheet();
}