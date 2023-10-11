import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
final class MainViewListViewModel extends BaseNamedViewListViewModel {
  @override
  void dispose() {}

  String initForMainView() {
    return KeysSuccessUtility.sUCCESS;
  }
}