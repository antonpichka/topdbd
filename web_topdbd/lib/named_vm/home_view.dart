import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/list_season_view.dart';
import 'package:web_topdbd/named_vm/season_vm/season_view.dart';

final class HomeView extends StatelessWidget {
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
                  const Icon(Icons.home),
                  const SizedBox(width: 2,),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text("Home",
                      style: Theme.of(context).textTheme.bodyLarge,),
                  ),
                ],
              ),
            ),
            SeasonView(),
            ListSeasonView(),
            const SizedBox(height: 10,),
          ]),
      ),
    );
  }

}