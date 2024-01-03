import 'package:common_topdbd/model/maps_w_match_balance/maps_w_match_balance.dart';
import 'package:meta/meta.dart';

@immutable
abstract interface class ISettingsListMapsWMatchBalanceViewModel {
  const ISettingsListMapsWMatchBalanceViewModel();

  void listeningTempCacheService();
  void setMinScrollExtent();
  void setMaxScrollExtent();
  void deleteItemToListView(MapsWMatchBalance itemMapsWMatchBalance);
  void closeBottomSheet();
  void addItemsBottomSheet();
}