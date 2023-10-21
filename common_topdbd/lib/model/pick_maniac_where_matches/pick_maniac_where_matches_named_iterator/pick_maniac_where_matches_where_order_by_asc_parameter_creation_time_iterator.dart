import 'package:common_topdbd/model/pick_maniac_where_matches/pick_maniac_where_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class PickManiacWhereMatchesWhereOrderByAscParameterCreationTimeIterator<T extends PickManiacWhereMatches> extends BaseModelWhereNamedParameterNamedIterator<T> {
  @override
  T get current {
    T itemCurrentPickManiacWhereMatches = listModelIterator[0].getClone as T;
    if (listModelIterator.length <= 1) {
      listModelIterator.removeAt(0);
      return itemCurrentPickManiacWhereMatches;
    }
    int indexRemove = 0;
    for (int i = 1; i < listModelIterator.length; i++) {
      if(listModelIterator[i].creationTime.millisecondsSinceEpoch < itemCurrentPickManiacWhereMatches.creationTime.millisecondsSinceEpoch) {
        itemCurrentPickManiacWhereMatches = listModelIterator[i].getClone as T;
        indexRemove = i;
        continue;
      }
    }
    listModelIterator.removeAt(indexRemove);
    return itemCurrentPickManiacWhereMatches;
  }
}