import 'package:meta/meta.dart';

@immutable
abstract interface class IBottomSheetCheckListSurvivorPerkViewModel {
  const IBottomSheetCheckListSurvivorPerkViewModel();

  void checkItemToListView(bool? value,String nameBySurvivorPerk);
}
