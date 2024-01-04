import 'package:meta/meta.dart';

@immutable
abstract interface class IBottomSheetCheckListManiacPerkViewModel {
  const IBottomSheetCheckListManiacPerkViewModel();

  void checkItemToListView(bool? value,String nameByManiacPerk);
}
