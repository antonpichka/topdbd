import 'package:common_topdbd/model/init_stream/init_stream.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListInitStream<T extends InitStream> extends BaseListModel<T> {
  const ListInitStream(super.listModel) : super();

  @override
  ListInitStream<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListInitStream<T>(newListModel);
  }

  InitStream getInitStreamFromNameStreamParameterListModel(String nameStream) {
    InitStream? currentInitStream;
    for(InitStream initStream in listModel) {
      if(initStream.nameStream != nameStream) {
        continue;
      }
      currentInitStream = initStream.getClone;
      break;
    }
    return currentInitStream ?? InitStream("",false);
  }

  void updateFromNameStreamAndIsInitStreamParameterListModel(String nameStream,bool isInitStream) {
    super.updateFromModelParameterListModel(InitStream(nameStream,isInitStream) as T);
  }

  bool isWhereNotInitStreamParameterListModel() {
    bool isNotInitStreamParameterListModel = false;
    for (T initStream in listModel) {
      if(!initStream.isInitStream) {
        isNotInitStreamParameterListModel = true;
        break;
      }
    }
    return isNotInitStreamParameterListModel;
  }

  bool isWhereInitStreamParameterListModel() {
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