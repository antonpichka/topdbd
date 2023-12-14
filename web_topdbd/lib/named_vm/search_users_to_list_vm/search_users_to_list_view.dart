import 'package:common_topdbd/model/duf_w_country_w_role_user/duf_w_country_w_role_user.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';
import 'package:web_topdbd/named_vm/search_users_to_list_vm/enum_data_for_search_users_to_list_view.dart';
import 'package:web_topdbd/named_vm/search_users_to_list_vm/test_search_users_to_list_view_model.dart';

final class SearchUsersToListView extends StatefulWidget {
  final String value;

  const SearchUsersToListView(Key key,this.value) : super(key: key);

  @override
  State<SearchUsersToListView> createState() => _SearchUsersToListViewState();
}

final class _SearchUsersToListViewState extends State<SearchUsersToListView> {
  /// RELEASE CODE
  // late final SearchUsersToListViewModel _viewModel;
  /// TEST CODE
  late final TestSearchUsersToListViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = SearchUsersToListViewModel(widget.value);
    /// TEST CODE
    _viewModel = TestSearchUsersToListViewModel(widget.value);
    super.initState();
    _initParameterViewModel();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForNamedParameterNamedStreamWState = _viewModel.getDataForNamedParameterNamedStreamWState;
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForSearchUsersToListView.isLoading:
        return const Center(child: CircularProgressIndicator());
      case EnumDataForSearchUsersToListView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"),);
      case EnumDataForSearchUsersToListView.success:
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
                        child: Text("Search Players",
                          style: Theme.of(context).textTheme.bodyLarge,),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1.0,
                  color: Theme.of(context).dividerColor,),
                dataForNamedParameterNamedStreamWState
                    .listDUFWCountryWRoleUser
                    .listModel
                    .isEmpty
                    ? const Center(child: Text("No element"),)
                    : ListView.separated(
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: dataForNamedParameterNamedStreamWState.listDUFWCountryWRoleUser.listModel.length,
                    itemBuilder: (context,index) {
                      final itemModel = dataForNamedParameterNamedStreamWState.listDUFWCountryWRoleUser.listModel[index];
                      if(index == 0) {
                        return _getHeaderToListViewWhereItemToListViewFromDUFWCountryWRoleUser(itemModel);
                      }
                      return _getItemToListViewWhereItemRoleToListViewFromDUFWCountryWRoleUser(itemModel);
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
  }

  Widget _getHeaderToListViewWhereItemToListViewFromDUFWCountryWRoleUser(DUFWCountryWRoleUser dUFWCountryWRoleUser) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                      'assets/icon/flags/unknown.png',
                      width: 32,
                      height: 32,
                      fit: BoxFit.cover),
                  const SizedBox(width: 2,),
                  Text(
                      "Player",
                      style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            ),
            Expanded(
                child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                        'Roles',
                        style: Theme.of(context).textTheme.bodyLarge))),
          ],
        ),
        const Divider(height: 2.0,thickness: 2.0,),
        _getItemToListViewWhereItemRoleToListViewFromDUFWCountryWRoleUser(dUFWCountryWRoleUser),
      ],
    );
  }

  Widget _getItemToListViewWhereItemRoleToListViewFromDUFWCountryWRoleUser(DUFWCountryWRoleUser dUFWCountryWRoleUser) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Tooltip(
                  message: dUFWCountryWRoleUser.country.getCountryRDWhereListCountryRDWReadyDataUtilityParameterNameCountry.nameCountry,
                  child: Image.asset(
                      dUFWCountryWRoleUser.country.getCountryRDWhereListCountryRDWReadyDataUtilityParameterNameCountry.pathToTheIcon,
                      width: 32,
                      height: 32,
                      fit: BoxFit.cover),
                ),
                const SizedBox(width: 2,),
                RichText(
                    text: TextSpan(
                      text: dUFWCountryWRoleUser.discordUserFirestore.username,
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        WebNavigationUtility
                            .goWhereChangeUrlAddressAndNewViewFromTwo(context,KeysNavigationUtility.getUnAuthNavigationUserViewQQUserQQIdFromId(dUFWCountryWRoleUser.discordUserFirestore.username));
                      },
                    )
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Wrap(
              children: List<Widget>.generate(dUFWCountryWRoleUser.roleUser.getListStringWhereRolesEqualTrueParameterIsAdmin.length, (int index) {
                final itemStringWhereRolesEqualTrueParametersTwo = dUFWCountryWRoleUser.roleUser.getListStringWhereRolesEqualTrueParameterIsAdmin[index];
                return _getItemRoleToListViewFromRole(itemStringWhereRolesEqualTrueParametersTwo);
              }),
            )
        ),
      ],
    );
  }

  Widget _getItemRoleToListViewFromRole(String role) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(role),
      )
    );
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _viewModel.init();
    debugPrint("SearchUsersToListView: $result");
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}