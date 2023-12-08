import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class PickManiacWMatchesWOrderByAscWCreationTimeIterator<T extends PickManiacWMatches> extends BaseModelWNamedWNamedWNamedIterator<T> {
  @override
  T get current {
    T clone = listModelIterator.first.getClone as T;
    if (listModelIterator.length <= 1) {
      listModelIterator.removeAt(0);
      return clone;
    }
    int indexWRemove = 0;
    for (int i = 1; i < listModelIterator.length; i++) {
      final itemModelIterator = listModelIterator[i];
      if(itemModelIterator.creationTime.millisecondsSinceEpoch < clone.creationTime.millisecondsSinceEpoch) {
        clone = listModelIterator[i].getClone as T;
        indexWRemove = i;
        continue;
      }
    }
    listModelIterator.removeAt(indexWRemove);
    return clone;
  }
}