import 'package:common_topdbd/model/init_stream/init_stream.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListInitStream<T extends InitStream> extends BaseListModel<T> {
  const ListInitStream(super.listModel) : super();

  @override
  ListInitStream<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListInitStream<T>(newListModel);
  }

  InitStream getInitStreamFromNameStreamParameterListModel(String nameStream) {
    InitStream? currentInitStream;
    for(InitStream initStream in listModel) {
      if(initStream.nameStream != nameStream) {
        continue;
      }
      currentInitStream = initStream.getCloneModel;
      break;
    }
    return currentInitStream ?? InitStream("",false);
  }


  void updateToListInitStream(String nameStream,bool isInitStream) {
    updateToListModel(InitStream(nameStream,isInitStream) as T);
  }

  bool isNotInitStreamParameterListModel() {
    bool isNotInitStreamParameterListModel = false;
    for (T initStream in listModel) {
      if(!initStream.isInitStream) {
        isNotInitStreamParameterListModel = true;
        break;
      }
    }
    return isNotInitStreamParameterListModel;
  }

  bool isInitStreamParameterListModel() {
    bool isInitStreamParameterListModel = true;
    for (T initStream in listModel) {
      if(!initStream.isInitStream) {
        isInitStreamParameterListModel = false;
        break;
      }
    }
    return isInitStreamParameterListModel;
  }
}