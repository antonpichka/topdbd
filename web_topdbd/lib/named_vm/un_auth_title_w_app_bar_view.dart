import 'package:flutter/material.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';

final class UnAuthTitleWAppBarView extends StatefulWidget {
  @override
  State<UnAuthTitleWAppBarView> createState() => _UnAuthTitleWAppBarViewState();
}

final class _UnAuthTitleWAppBarViewState extends State<UnAuthTitleWAppBarView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Wrap(
        children: [
          Tooltip(
            message: "Login",
            child: Ink(
              decoration: const ShapeDecoration(
                  shape: CircleBorder()
              ),
              child: IconButton(
                icon: const Icon(Icons.login),
                iconSize: 30,
                onPressed: () {
                  WebNavigationUtility.goWhereChangeUrlAddressAndNewViewFromTwo(context,KeysNavigationUtility.unAuthNavigationViewQQLogin);
                },
              ),
            ),
          ),
          Tooltip(
            message: "Download",
            child: Ink(
              decoration: const ShapeDecoration(
                  shape: CircleBorder()
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.download,
                ),
                iconSize: 30,
                onPressed: () {
                },
              ),
            ),
          ),
        ],),
    );
  }
}