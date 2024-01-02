import 'package:meta/meta.dart';

@immutable
abstract interface class IBottomSheetCheckListManiacViewModel {
  const IBottomSheetCheckListManiacViewModel();

  void checkItemToListView(bool? value,String nameByManiac);
}