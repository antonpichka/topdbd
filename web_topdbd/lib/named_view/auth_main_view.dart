import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_auth_main_view/enum_data_for_auth_main_view.dart';
import 'package:web_topdbd/named_view/custom_footer_view.dart';
import 'package:web_topdbd/named_view/navigation_view.dart';
import 'package:web_topdbd/named_view/title_w_app_bar_view.dart';
import 'package:web_topdbd/named_view_model/auth_main_view_model.dart';

final class AuthMainView extends StatefulWidget {
  final Widget namedView;
  final String id;

  const AuthMainView(this.namedView,this.id);

  @override
  State<AuthMainView> createState() => _AuthMainViewState();
}

final class _AuthMainViewState extends State<AuthMainView> {
  late final AuthMainViewModel _authMainViewModel;

  @override
  void initState() {
    _authMainViewModel = AuthMainViewModel();
    super.initState();
    _initParameterAuthMainViewModel();
  }

  @override
  void dispose() {
    _authMainViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForNamedParameterNamedStreamWState = _authMainViewModel.getDataForNamedParameterNamedStreamWState;
    final value = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: _getWidgetWhereNotVerifiedUserFromContextAndSizedBoxWidthAndTextSizeAndTextButtonSize(context,250,18,18)),
          Condition.equals(name: TABLET, value: _getWidgetWhereNotVerifiedUserFromContextAndSizedBoxWidthAndTextSizeAndTextButtonSize(context,300,24,24)),
          Condition.equals(name: DESKTOP, value: _getWidgetWhereNotVerifiedUserFromContextAndSizedBoxWidthAndTextSizeAndTextButtonSize(context,400,30,30)),
        ]
    ).value ?? Container();
    final valueFIRST = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: _getWidgetWhereHackedFromContextAndSizedBoxWidthAndTextSize(context,250,18)),
          Condition.equals(name: TABLET, value: _getWidgetWhereHackedFromContextAndSizedBoxWidthAndTextSize(context,300,24)),
          Condition.equals(name: DESKTOP, value: _getWidgetWhereHackedFromContextAndSizedBoxWidthAndTextSize(context,400,30)),
        ]
    ).value ?? Container();
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForAuthMainView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForAuthMainView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}")));
      case EnumDataForAuthMainView.notVerifiedUser:
        return value;
      case EnumDataForAuthMainView.hacked:
        return valueFIRST;
      case EnumDataForAuthMainView.success:
      return Scaffold(
        appBar: AppBar(
            scrolledUnderElevation: 0.0,
            centerTitle: true,
            title: TitleWAppBarView(),
            backgroundColor: Theme.of(context).colorScheme.surface,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(4.0),
                child: NavigationView())
        ),
        drawer: value,
        body: FooterView(
          footer: Footer(
              backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              alignment: Alignment.center,
              child: CustomFooterView()
          ),
          flex: 1,
          children: [
            const SizedBox(height: 5),
            widget.namedView
          ],
        ),
      );
      default:
        return Container();
    }
  }

  Future<void> _initParameterAuthMainViewModel() async {
    _authMainViewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    await _authMainViewModel.listeningStreamsFirebaseFirestoreService();
    final result = await _authMainViewModel.init();
    debugPrint("AuthMainViewModel: $result");
    if(!mounted) {
      return;
    }
    _authMainViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Widget _getWidgetWhereNotVerifiedUserFromContextAndSizedBoxWidthAndTextSizeAndTextButtonSize(BuildContext context,double sizedBoxWidth,double textSize,double textButtonSize) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Column(
                children: [
                  SizedBox(
                    width: sizedBoxWidth,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.all(16.0),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "You are not a verified user",
                                style: TextStyle(
                                  fontSize: textSize,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.8,
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ),
                ])
        ),
      ),
    );
  }

  Widget _getWidgetWhereHackedFromContextAndSizedBoxWidthAndTextSize(BuildContext context,double sizedBoxWidth,double textSize) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Column(
                children: [
                  SizedBox(
                    width: sizedBoxWidth,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.all(16.0),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Someone logged into your account OR your ip address has changed (IP addresses do not match)",
                                style: TextStyle(
                                  fontSize: textSize,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.8,
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ),
                ])
        ),
      ),
    );
  }
}