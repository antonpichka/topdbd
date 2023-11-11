import 'package:flutter/material.dart';
import 'package:web_topdbd/named_view_model/auth_main_view_model.dart';

final class AuthMainView extends StatefulWidget {
  final String nameRoute;
  final String id;

  const AuthMainView(this.nameRoute,this.id);

  @override
  State<AuthMainView> createState() => _AuthMainViewState();
}

final class _AuthMainViewState extends State<AuthMainView> {
  late final AuthMainViewModel _authMainViewModel;

  @override
  void initState() {
    _authMainViewModel = AuthMainViewModel();
    super.initState();
  }

  @override
  void dispose() {
    _authMainViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}