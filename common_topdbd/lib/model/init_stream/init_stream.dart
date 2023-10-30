import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class InitStream extends BaseModel {
  final String nameStream;
  final bool isInitStream;

  const InitStream(this.nameStream,this.isInitStream) : super(nameStream);

  @override
  InitStream get getClone => InitStream(nameStream,isInitStream);

  @override
  String toString() {
    return "InitStream(nameStream: $nameStream, "
        "isInitStream: $isInitStream)";
  }
}