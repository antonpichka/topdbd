import 'package:meta/meta.dart';

@immutable
abstract interface class IBottomSheetCheckListMapsViewModel {
  const IBottomSheetCheckListMapsViewModel();

  void checkItemToListView(bool? value,String nameByMaps);
}