import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:meta/meta.dart';

@immutable
abstract interface class IListManiacWMatchBalanceViewModel {
  const IListManiacWMatchBalanceViewModel();

  void setMinScrollExtent();
  void setMaxScrollExtent();
  void onTapItemToListView(ManiacWMatchBalance itemManiacWMatchBalance);
}