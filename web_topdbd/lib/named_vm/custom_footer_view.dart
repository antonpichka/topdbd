import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';

final class CustomFooterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
              text: "Terms of Use",
              style: Theme.of(context).textTheme.bodyLarge,
              recognizer: TapGestureRecognizer()..onTap = () {
                WebNavigationUtility
                    .goWhereChangeUrlAddressAndNewViewFromTwo(context,KeysNavigationUtility.customFooterViewQQTermsOfUse);
              }
          ),
        ),
      ],
    );
  }
}