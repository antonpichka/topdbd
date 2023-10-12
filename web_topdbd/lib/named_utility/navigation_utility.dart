import 'package:meta/meta.dart';
import 'package:web_topdbd/named_utility/enum_navigation_utility.dart';

@immutable
final class NavigationUtility {
  final EnumNavigationUtility enumNavigationUtility;
  final String uniqueIdByUser;
  final bool isPreSuccess;

  const NavigationUtility(this.enumNavigationUtility,this.uniqueIdByUser,this.isPreSuccess);
}