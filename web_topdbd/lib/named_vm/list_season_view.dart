import 'package:flutter/material.dart';

final class ListSeasonView extends StatefulWidget {
  @override
  State<ListSeasonView> createState() => _ListSeasonViewState();
}

final class _ListSeasonViewState extends State<ListSeasonView> {
  late final ScrollController _scrollController;
  /*final _updateListEESeasonEEFromListSeasonEEParameterTempCacheService =
  UpdateListEESeasonEEFromListSeasonEEParameterTempCacheService();*/

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
    /* _updateListEESeasonEEFromListSeasonEEParameterTempCacheService
        .updateListSeasonFromListSeasonParameterTempCacheService(ListSeason(List.of(
        [
          Season(1,200,40,DateTime.parse("2023-01-01"),DateTime.parse("2023-01-31")),
          Season(2,200,40,DateTime.parse("2023-02-01"),DateTime.parse("2023-02-28")),
          Season(3,200,40,DateTime.parse("2023-03-01"),DateTime.parse("2023-03-31")),
          Season(4,200,40,DateTime.parse("2023-04-01"),DateTime.parse("2023-04-30")),
          Season(5,200,40,DateTime.parse("2023-05-01"),DateTime.parse("2023-05-31")),
          Season(6,200,40,DateTime.parse("2023-06-01"),DateTime.parse("2023-06-30")),
          Season(7,200,40,DateTime.parse("2023-07-01"),DateTime.parse("2023-07-31")),
          Season(8,200,40,DateTime.parse("2023-08-01"),DateTime.parse("2023-08-31")),
          Season(9,200,40,DateTime.parse("2023-09-01"),DateTime.parse("2023-09-30"))
        ])));
     */
    /// THERE FIRST
    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Icon(Icons.rocket),
                  SizedBox(width: 2,),
                  Padding(
                    padding: EdgeInsets.only(top: 3.0),
                    child: Text("Past Seasons"),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.0,
              color: Theme.of(context).dividerColor,),
            MouseRegion(
              cursor: SystemMouseCursors.allScroll,
              child: ListView.separated(
                  controller: _scrollController,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context,index) {
                    return _getItemToListViewFromFive("1","Sep 1, 2023","Sep 30, 2023","120","10");
                  },
                  separatorBuilder: (context,index) {
                    return Divider(
                      height: 1.0,
                      color: Theme.of(context).dividerColor,);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getItemToListViewFromFive(String name,String startOfSeasonTime,String endOfSeasonTime,String strNumberOfMatchesPlayedPerSeason,String strNumberOfUniquePlayersWhoPlayedInASeason) {
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
                child: Text("Season #$name"
                ),
              ),
            ],
          ),
          Text("$startOfSeasonTime - $endOfSeasonTime"),
          const Text("Number of matches played per season:"),
          Text(strNumberOfMatchesPlayedPerSeason),
          const Text("Number of unique players who played in a season:",),
          Text(strNumberOfUniquePlayersWhoPlayedInASeason),
        ],
      ),
    );
  }
}