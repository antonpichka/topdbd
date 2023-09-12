import 'package:common_topdbd/model/pick_maniac_where_matches/pick_maniac_where_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class PickManiacWhereMatchesQWhereOrderByAscParameterCreationTimeIterator<T extends PickManiacWhereMatches> extends BaseModelQNamedIterator<T>{
  @override
  T get current {
    T itemCurrentPickManiacWhereMatches = listModelForIterator[0].getCloneModel as T;
    if (listModelForIterator.length <= 1) {
      listModelForIterator.removeAt(0);
      return itemCurrentPickManiacWhereMatches;
    }
    int indexRemove = 0;
    for (int i = 1; i < listModelForIterator.length; i++) {
      if(listModelForIterator[i].creationTime.millisecondsSinceEpoch < itemCurrentPickManiacWhereMatches.creationTime.millisecondsSinceEpoch) {
        itemCurrentPickManiacWhereMatches = listModelForIterator[i].getCloneModel as T;
        indexRemove = i;
        continue;
      }
    }
    listModelForIterator.removeAt(indexRemove);
    return itemCurrentPickManiacWhereMatches;
  }

  @override
  bool moveNext() {
    return listModelForIterator.isNotEmpty;
  }
}