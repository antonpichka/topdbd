import 'package:flutter/material.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';

final class UnAuthDrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text("Login"),
          leading: const Icon(Icons.login),
          tileColor: Theme.of(context).colorScheme.surface,
          onTap: () {
            WebNavigationUtility
                .goWhereChangeUrlAddressAndNewViewFromTwo(context,KeysNavigationUtility.login);
          },),
        const SizedBox(height: 2,),
        ListTile(
          title: const Text("Download"),
          leading: const Icon(Icons.download),
          tileColor: Theme.of(context).colorScheme.surface,
          onTap: () {
          },),
      ],);
  }
}