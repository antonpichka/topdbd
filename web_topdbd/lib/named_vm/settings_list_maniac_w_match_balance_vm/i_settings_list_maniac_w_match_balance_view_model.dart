import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:meta/meta.dart';

@immutable
abstract interface class ISettingsListManiacWMatchBalanceViewModel {
  const ISettingsListManiacWMatchBalanceViewModel();

  void listeningTempCacheService();
  void setMinScrollExtent();
  void setMaxScrollExtent();
  void onTapItemToListView(ManiacWMatchBalance itemManiacWMatchBalance);
  void deleteItemToListView(ManiacWMatchBalance itemManiacWMatchBalance);
  void closeBottomSheet();
  void addItemsBottomSheet();
}