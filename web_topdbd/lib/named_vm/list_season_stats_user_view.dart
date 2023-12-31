import 'package:flutter/material.dart';

final class ListSeasonStatsUserView extends StatefulWidget {
  final String usernameByDiscordUser;

  const ListSeasonStatsUserView(this.usernameByDiscordUser);

  @override
  State<ListSeasonStatsUserView> createState() => _ListSeasonStatsUserViewState();
}

final class _ListSeasonStatsUserViewState extends State<ListSeasonStatsUserView> {
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
                    Icon(Icons.query_stats),
                    SizedBox(width: 2,),
                    Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Text("Statistics from past seasons"),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1.0,
                color: Theme.of(context).dividerColor,),
              const SizedBox(height: 5,),
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
                        itemCount: 9,
                        itemBuilder: (context,index) {
                          return _getItemToListViewFromNameAndMatchesWonAndMatchesLostAndRatingPoints("1","10","0","300");
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
            ]),
      ),
    );
  }

  Widget _getItemToListViewFromNameAndMatchesWonAndMatchesLostAndRatingPoints(String name,String matchesWon,String matchesLost,String ratingPoints) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Wrap(
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
          ),
          Expanded(
            child: Text("$matchesWon-$matchesLost | $ratingPoints Points",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

}