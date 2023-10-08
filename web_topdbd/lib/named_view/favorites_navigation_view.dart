import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class FavoritesNavigationView extends StatefulWidget {
  @override
  State<FavoritesNavigationView> createState() => _FavoritesNavigationViewState();
}

final class _FavoritesNavigationViewState extends State<FavoritesNavigationView> {
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
                    Icon(Icons.favorite, color: Colors.white,),
                    SizedBox(width: 1,),
                    Icon(Icons.navigation, color: Colors.white,),
                    Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Text("Favorites Navigation"),
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
                        return _buildItemToListView(Icons.stacked_bar_chart,"TOP Players");
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

  Widget _buildItemToListView(IconData iconData,String name) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Theme.of(context).dividerColor))
      ),
      child: ListTile(
        onTap: () {

        },
        title: Wrap(
          alignment: WrapAlignment.center,
          children: [
            const SizedBox(width: 2,),
            Icon(iconData,
              color: Colors.white,),
            const SizedBox(width: 2,),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(name.length >  45 ? "${name.substring(0,45)}..." : name,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(width: 2,),
            RatingBar.builder(
              initialRating: 1,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 30,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Theme.of(context).colorScheme.secondary,
              ),
              onRatingUpdate: (rating) {
              },
            )
          ],
        ),
      ),
    );
  }
}