import 'package:common_topdbd/model/discord_user/discord_user.dart';
import 'package:common_topdbd/model/discord_user/list_discord_user.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/i_get_model_from_named_service_np_data_source.dart';

base class DiscordUserQHttpClientServiceViewModelUsingGetNPForDiscordAuth<T extends DiscordUser,Y extends ListDiscordUser<T>>
    implements IGetModelFromNamedServiceNPDataSource<T>
{
  @override
  Future<T> getModelFromNamedServiceNPDS() {
    // TODO: implement getModelFromNamedServiceNPDS
    throw UnimplementedError();
  }

}