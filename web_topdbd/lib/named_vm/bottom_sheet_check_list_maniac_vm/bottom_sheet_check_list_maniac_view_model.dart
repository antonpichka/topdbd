import 'package:common_topdbd/model/maniac/list_maniac.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maniac_vm/data_for_bottom_sheet_check_list_maniac_view.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maniac_vm/i_bottom_sheet_check_list_maniac_view_model.dart';

@immutable
final class BottomSheetCheckListManiacViewModel extends BaseNamedViewModel<DataForBottomSheetCheckListManiacView,
    DefaultStreamWState<DataForBottomSheetCheckListManiacView>> implements IBottomSheetCheckListManiacViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  BottomSheetCheckListManiacViewModel(ListManiac listManiac)
      : super(DefaultStreamWState(DataForBottomSheetCheckListManiacView(true,listManiac,ListStrings(List.empty(growable: true)))));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void checkItemToListView(bool? value, String nameByManiac) {
    // TODO: implement checkItemToListView
  }
}
