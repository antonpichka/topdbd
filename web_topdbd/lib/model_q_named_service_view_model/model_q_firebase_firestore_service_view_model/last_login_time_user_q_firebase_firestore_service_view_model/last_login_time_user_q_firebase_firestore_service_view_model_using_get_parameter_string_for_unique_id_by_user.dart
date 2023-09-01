import 'package:common_topdbd/model/last_login_time_user/last_login_time_user.dart';
import 'package:common_topdbd/model/last_login_time_user/list_last_login_time_user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class LastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser<T extends LastLoginTimeUser,Y extends ListLastLoginTimeUser<T>> extends BaseGetModelFromNamedServiceParameterNamedDataSource<T,String> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<T> getLastLoginTimeUserFromFirebaseFirestoreServiceParameterStringDS(String parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceParameterNamedDS(String parameter)
  async {
    try {
      final documentByLastLoginTimeUser = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.lastLoginTimeUser)
          .where(KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQUniqueIdByUser,isEqualTo: parameter)
          .limit(1)
          .get();
      if((documentByLastLoginTimeUser?.size ?? 0) <= 0) {
        return LastLoginTimeUser.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.lastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUserQWhereLocalExceptionGuiltyUserNoExists)) as T;
      }
      return LastLoginTimeUser.success(
          documentByLastLoginTimeUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQUniqueIdByUser],
          documentByLastLoginTimeUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.lastLoginTimeUserQLastLoginTime]) as T;
    } catch(e) {
      return LastLoginTimeUser.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}