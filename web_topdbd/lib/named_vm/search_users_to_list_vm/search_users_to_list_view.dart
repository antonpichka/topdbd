import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

final class SearchUsersToListView extends StatefulWidget {
  final String value;

  const SearchUsersToListView(this.value);

  @override
  State<SearchUsersToListView> createState() => _SearchUsersToListViewState();
}

final class _SearchUsersToListViewState extends State<SearchUsersToListView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// THERE FIRST
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
                  const Icon(Icons.search),
                  const SizedBox(width: 2,),
                  Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Text("Search users",
                      style: Theme.of(context).textTheme.bodyLarge,),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.0,
              color: Theme.of(context).dividerColor,),
            ListView.separated(
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 100,
                itemBuilder: (context,index) {
                  if(index == 0) {
                    return _getHeaderToListViewWhereItemToListViewFromIndexAndUsername(index,"Vicar32");
                  }
                  return _getItemToListViewWhereItemRoleToListViewFromIndexAndUsername(index,"Vicar32");
                },
                separatorBuilder: (context,index) {
                  return  Divider(
                    height: 1.0,
                    color: Theme.of(context).dividerColor,);
                }),
          ],
        ),
      ),
    );
  }

  Widget _getHeaderToListViewWhereItemToListViewFromIndexAndUsername(int index,String username) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                    "User",
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
            ),
            Expanded(
                child: Text(
                    'Roles',
                    style: Theme.of(context).textTheme.bodyLarge)),
          ],
        ),
        const Divider(height: 2.0,thickness: 2.0,),
        _getItemToListViewWhereItemRoleToListViewFromIndexAndUsername(index,username),
      ],
    );
  }

  Widget _getItemToListViewWhereItemRoleToListViewFromIndexAndUsername(int index,String username) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                    'assets/icon/flags/france.png',
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover),
                const SizedBox(width: 2,),
                RichText(
                    text: TextSpan(
                      text: username,
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize),
                      recognizer: TapGestureRecognizer()..onTap = () {
                      },
                    )
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Wrap(
              children: List<Widget>.generate(3, (int index) {
                return _getItemRoleToListViewFromIndexAndRole(index, "Admin");
              }),
            )
        ),
      ],
    );
  }

  Widget _getItemRoleToListViewFromIndexAndRole(int index,String role) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: ElevatedButton(
          onPressed: () {

          },
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Theme.of(context).colorScheme.primary)
                  )
              )
          ),
          child: Text(role,
              style: Theme.of(context).textTheme.bodyMedium)
      ),
    );
  }
  
}