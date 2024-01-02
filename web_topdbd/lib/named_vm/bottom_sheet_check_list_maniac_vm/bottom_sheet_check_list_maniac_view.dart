import 'package:common_topdbd/model/maniac/list_maniac.dart';
import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:flutter/material.dart';

final class BottomSheetCheckListManiacView extends StatefulWidget {
  final ListManiac listManiac;

  const BottomSheetCheckListManiacView(this.listManiac);

  @override
  State<BottomSheetCheckListManiacView> createState() => _BottomSheetCheckListManiacViewState();
}

final class _BottomSheetCheckListManiacViewState extends State<BottomSheetCheckListManiacView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context,index) {
            final itemModel = dataForNamedParameterNamedStreamWState
                .getListManiacWhereWithoutElementsOfAnotherListParametersTwo
                .listModel[index];
            final listStringsWListManiacWCheckbox = dataForNamedParameterNamedStreamWState.listStringsWListManiacWCheckbox;
            return _getWidgetWhereItemToListViewFromTwoParameterViewModelFIRST(itemModel,listStringsWListManiacWCheckbox);
          },
          separatorBuilder: (context,index) {
            return const Divider(height: 2.0,);
          },
          itemCount: dataForNamedParameterNamedStreamWState
              .getListManiacWhereWithoutElementsOfAnotherListParametersTwo
              .listModel
              .length
      ),
    );
  }

  Widget _getWidgetWhereItemToListViewFromTwoParameterViewModelFIRST(Maniac maniac,ListStrings<Strings> listStringsWListManiacWCheckbox) {
    return ListTile(
      leading: Image.asset(
          maniac.imagePath,
          width: 50,
          height: 50,
          fit: BoxFit.cover),
      title: Text(maniac.name),
      trailing: Checkbox(
          value: maniac
              .isWhereEqualsFromListStringsParameterName(listStringsWListManiacWCheckbox),
          onChanged: (bool? value) {
            _viewModel.checkItemToListView(value,maniac.name);
          }),
    );
  }
}