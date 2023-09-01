import 'package:library_architecture_mvvm_modify/utility/utility.dart';
import 'package:web_topdbd/named_service/temp_cache_service.dart';

Future<void> main() async {
  final tempCacheService = TempCacheService.instance;
  tempCacheService.insertOrUpdateObjectToTempCache("Op", "Suka");
  final first = tempCacheService.getObjectFromTempCache("Op");
  debugPrint("First: $first");
  tempCacheService
      .getStreamObjectFromTempCache("Op")
      .listen((event) {
        debugPrint("Listen: ${event.toString()}");
      });
  tempCacheService.insertOrUpdateObjectToTempCache("Op", "Nahuy");
  await Future.delayed(const Duration(seconds: 1));
  tempCacheService.insertOrUpdateObjectToTempCache("Op", "BLyad");
}