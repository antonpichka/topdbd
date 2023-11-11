import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_auth_main_view/data_for_auth_main_view.dart';

@immutable
final class AuthMainViewModel extends BaseNamedViewModel<DataForAuthMainView,DefaultStreamWState<DataForAuthMainView>> {
  AuthMainViewModel() : super(DefaultStreamWState(DataForAuthMainView(true,false,false)));

  @override
  Future<String> init() {
    // TODO: implement init
    throw UnimplementedError();
  }

}