import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class PickManiacWMatchesWhereOrderByAscParameterCreationTimeIterator<T extends PickManiacWMatches> extends BaseModelWhereNamedParameterNamedIterator<T> {
  @override
  T get current {
    T itemCurrentModelIterator = listModelIterator[0].getClone as T;
    if (listModelIterator.length <= 1) {
      listModelIterator.removeAt(0);
      return itemCurrentModelIterator;
    }
    int indexWRemove = 0;
    for (int i = 1; i < listModelIterator.length; i++) {
      if(listModelIterator[i].creationTime.millisecondsSinceEpoch < itemCurrentModelIterator.creationTime.millisecondsSinceEpoch) {
        itemCurrentModelIterator = listModelIterator[i].getClone as T;
        indexWRemove = i;
        continue;
      }
    }
    listModelIterator.removeAt(indexWRemove);
    return itemCurrentModelIterator;
  }
}