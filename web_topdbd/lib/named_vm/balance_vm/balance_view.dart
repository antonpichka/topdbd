import 'package:flutter/material.dart';

final class BalanceView extends StatelessWidget {
  final Widget namedNavigationBalanceView;
  final Widget namedBalanceView;

  const BalanceView(this.namedNavigationBalanceView,this.namedBalanceView);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.transparent,
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    const Icon(Icons.balance),
                    const SizedBox(width: 2,),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text("Balance",
                        style: Theme.of(context).textTheme.bodyLarge,),
                    ),
                  ],
                ),
              ),
              namedNavigationBalanceView,
              namedBalanceView,
              const SizedBox(height: 10,),
            ]),
      ),
    );
  }
}