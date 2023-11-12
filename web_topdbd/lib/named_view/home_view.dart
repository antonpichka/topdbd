import 'package:flutter/material.dart';
import 'package:web_topdbd/named_view/list_season_view.dart';
import 'package:web_topdbd/named_view/season_view.dart';

final class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          color: Colors.transparent,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Padding(
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
              ),
              Wrap(
                children: [
                  SeasonView(),
                  ListSeasonView()
                ],
              ),
            ]),
        ),
      ),
    );
  }

}