import 'package:flutter/material.dart';
import 'package:web_topdbd/data_for_named/data_for_pre_main_view/enum_data_for_pre_main_view.dart';
import 'package:web_topdbd/named_view/main_view.dart';
import 'package:web_topdbd/named_view_list_view_model/pre_main_view_list_view_model.dart';

final class PreMainView extends StatefulWidget {
  final String nameLocationByNavigation;

  const PreMainView(this.nameLocationByNavigation);

  @override
  State<PreMainView> createState() => _PreMainViewState();
}

final class _PreMainViewState extends State<PreMainView> {
  late final PreMainViewListViewModel _preMainViewListViewModel;

  @override
  void initState() {
    _preMainViewListViewModel = PreMainViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _preMainViewListViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForPreMainView = _preMainViewListViewModel.getDataForPreMainView;
    switch(dataForPreMainView?.getEnumDataForPreMainView) {
      case EnumDataForPreMainView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForPreMainView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForPreMainView?.exceptionController.getKeyParameterException}")));
      case EnumDataForPreMainView.otherException:
        return Scaffold(body: Center(child: Text("${dataForPreMainView?.otherException}")));
      case EnumDataForPreMainView.success:
        return MainView(widget.nameLocationByNavigation);
      default:
        return Container();
    }
  }

  Future<void> _init()
  async {
    _preMainViewListViewModel
        .getStreamDataForPreMainView
        .listen((event) {
          setState(() {});
        });
    final result = await _preMainViewListViewModel
        .initForPreMainView();
    debugPrint("PreMainView: $result");
    if(!mounted) {
      return;
    }
    _preMainViewListViewModel.notifyStreamDataForPreVerifiedUserSystemView();
  }
}