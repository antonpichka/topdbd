import 'package:flutter/material.dart';

final class BalanceView extends StatefulWidget {
  final Widget namedNavigationBalanceView;
  final Widget namedBalanceView;

  const BalanceView(this.namedNavigationBalanceView,this.namedBalanceView);

  @override
  State<BalanceView> createState() => _BalanceViewStats();
}

final class _BalanceViewStats extends State<BalanceView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}