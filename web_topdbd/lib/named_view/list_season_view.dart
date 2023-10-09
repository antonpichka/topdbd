import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class ListSeasonView extends StatefulWidget {
  @override
  State<ListSeasonView> createState() => _ListSeasonViewState();
}

final class _ListSeasonViewState extends State<ListSeasonView> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rvDoubleWidthSizedBox = ResponsiveValue<double>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: 1.0),
          Condition.equals(name: TABLET, value: 1.0),
          Condition.equals(name: DESKTOP,value: 2.1),
        ]).value;
    return SizedBox(
      width: MediaQuery.of(context).size.width / rvDoubleWidthSizedBox!,
      child: Card(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Icon(Icons.rocket, color: Colors.white,),
                    Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Text("Past Seasons"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Theme.of(context).colorScheme.secondary))
              ),
            ),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: MouseRegion(
                cursor: SystemMouseCursors.allScroll,
                child: RawScrollbar(
                  controller: _scrollController,
                  thumbColor: Theme.of(context).colorScheme.secondary,
                  radius: const Radius.circular(30),
                  thickness: 15,
                  thumbVisibility: true,
                  child: ListView.separated(
                      controller: _scrollController,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      itemBuilder: (context,index) {
                        return _buildItemToListView("1","Sep 1, 2023","Sep 30, 2023","120","10");
                      },
                      separatorBuilder: (context,index) {
                        return  Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Theme.of(context).dividerColor))
                            )
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemToListView(String name,String startOfSeasonTime,String endOfSeasonTime,String strNumberOfMatchesPlayedPerSeason,String strNumberOfUniquePlayersWhoPlayedInASeason) {
    return ListTile(
      onTap: () {

      },
      title: Column(
        children: [
          Wrap(
            children: [
              const Icon(Icons.history_edu, color: Colors.white,),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text("Season #$name",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          Text("$startOfSeasonTime - $endOfSeasonTime",
            style: Theme.of(context).textTheme.bodyMedium,),
          Text("Number of matches played per season: $strNumberOfMatchesPlayedPerSeason",
            style: Theme.of(context).textTheme.bodyMedium,),
          Text("Number of unique players who played in a season: $strNumberOfUniquePlayersWhoPlayedInASeason",
            style: Theme.of(context).textTheme.bodyMedium,),
        ],
      ),
    );
  }
}