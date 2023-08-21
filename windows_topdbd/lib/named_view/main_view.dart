import 'package:flutter/material.dart';
import 'package:windows_topdbd/named_view_list_view_model/main_view_list_view_model.dart';

final class MainView
    extends StatefulWidget
{
  final MainViewListViewModel mainViewListViewModel;

  const MainView(this.mainViewListViewModel);

  @override
  State<MainView> createState() => _MainViewState();
}

final class _MainViewState
    extends State<MainView>
{
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    widget
        .mainViewListViewModel
        .dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text("Hello World")),
    );
  }
}