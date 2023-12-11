import 'package:common_topdbd/model/season/list_season.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/list_season_vm/enum_data_for_list_season_view.dart';

final class DataForListSeasonView extends BaseDataForNamed<EnumDataForListSeasonView> {
  ListSeason listSeason;

  DataForListSeasonView(super.isLoading,this.listSeason);

  @override
  EnumDataForListSeasonView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForListSeasonView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForListSeasonView.exception;
    }
    return EnumDataForListSeasonView.success;
  }
}