import 'package:meta/meta.dart';

@immutable
abstract interface class IItemManiacWMatchBalanceViewModel {
  const IItemManiacWMatchBalanceViewModel();

  void listeningTempCacheService();
  void setMinScrollExtent();
  void setMaxScrollExtent();
  void setMinScrollExtentFIRST();
  void setMaxScrollExtentFIRST();
  void setMinScrollExtentSECOND();
  void setMaxScrollExtentSECOND();
}