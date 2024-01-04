import 'package:common_topdbd/model/maniac_perk_w_match_balance/maniac_perk_w_match_balance.dart';
import 'package:meta/meta.dart';

@immutable
abstract interface class ISettingsListManiacPerksWMatchBalanceViewModel {
  const ISettingsListManiacPerksWMatchBalanceViewModel();

  void listeningTempCacheService();
  void setMinScrollExtent();
  void setMaxScrollExtent();
  void deleteItemToListView(ManiacPerkWMatchBalance itemManiacPerkWMatchBalance);
  void closeBottomSheet();
  void addItemsBottomSheet();
}