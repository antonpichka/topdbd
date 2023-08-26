final class TempCacheService {
  static final TempCacheService instance = TempCacheService._();
  final Map<String,dynamic> _preTempCache;
  final Map<String,dynamic> _tempCache;

  TempCacheService._() :
        _preTempCache = {},
        _tempCache = {};

  Stream<dynamic> getStreamObjectFromTempCache(String key)
  async* {
    _beforeActivatingTheStream(key);
    while(true) {
      await Future.delayed(const Duration(milliseconds: 500));
      if(!_preTempCache.containsKey(key)) {
        continue;
      }
      final preValue = _preTempCache[key];
      if(_tempCache.containsKey(key)) {
        continue;
      }
      _tempCache[key] = preValue;
      yield preValue;
    }
  }

  void insertOrUpdateObjectToTempCache(String key,dynamic value) {
    if(_tempCache.containsKey(key)) {
      _tempCache.remove(key);
      _preTempCache[key] = value;
      return;
    }
    _preTempCache[key] = value;
  }

  void deleteObjectToTempCache(String key) {
    _preTempCache.remove(key);
    _tempCache.remove(key);
  }

  void _beforeActivatingTheStream(String key) {
    if(!_preTempCache.containsKey(key)) {
      return;
    }
    _tempCache[key] = _preTempCache[key];
  }
}