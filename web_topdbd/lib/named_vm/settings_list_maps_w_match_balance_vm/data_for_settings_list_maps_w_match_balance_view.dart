import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/maps_w_match_balance/list_maps_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/maps_w_match_balance.dart';
import 'package:common_topdbd/named_utility/ready_data_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/settings_list_maps_w_match_balance_vm/enum_data_for_settings_list_maps_w_match_balance_view.dart';

final class DataForSettingsListMapsWMatchBalanceView extends BaseDataForNamed<EnumDataForSettingsListMapsWMatchBalanceView> {
  final ListMaps listMaps;
  String nameByManiacWMatchBalance;
  ListMapsWMatchBalance listMapsWMatchBalance;
  ListStrings listStringsWListMapsWCheckbox;
  bool isMaxLeftScroll;
  bool isMaxRightScroll;

  DataForSettingsListMapsWMatchBalanceView(super.isLoading,this.nameByManiacWMatchBalance,this.listMapsWMatchBalance,this.listStringsWListMapsWCheckbox,this.isMaxLeftScroll,this.isMaxRightScroll)
      : listMaps = ReadyDataUtility.getListMaps;

  @override
  EnumDataForSettingsListMapsWMatchBalanceView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForSettingsListMapsWMatchBalanceView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForSettingsListMapsWMatchBalanceView.exception;
    }
    return EnumDataForSettingsListMapsWMatchBalanceView.success;
  }

  ListMaps get getListMapsWhereWithoutElementsOfAnotherListParametersTwo {
    final clone = listMaps.getClone;
    for(MapsWMatchBalance itemMapsWMatchBalance in listMapsWMatchBalance.listModel) {
      clone.deleteFromUniqueIdByModelParameterListModel(itemMapsWMatchBalance.name);
    }
    return clone;
  }

  int get getIntWhereLengthLessTwoAndEqualParametersListMapsWMatchBalanceAndListMaps {
    if(listMapsWMatchBalance.listModel.length < 2) {
      return listMapsWMatchBalance.listModel.length + 1;
    }
    if(listMapsWMatchBalance.listModel.length == listMaps.listModel.length) {
      return listMapsWMatchBalance.listModel.length;
    }
    return listMapsWMatchBalance.listModel.length + 2;
  }

  void insertListMapsWMatchBalanceParametersTwo() {
    listMapsWMatchBalance
        .insertListFromListStrings(listStringsWListMapsWCheckbox);
  }

  bool isWhereLengthLessTwoAndEqualParametersListMapsWMatchBalanceAndListMaps() {
    if(listMapsWMatchBalance.listModel.length < 2) {
      return true;
    }
    return listMapsWMatchBalance.listModel.length == listMaps.listModel.length;
  }
}