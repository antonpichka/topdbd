import 'package:flutter/services.dart';

final class AssetBundleService {
  static final AssetBundleService instance = AssetBundleService._();
  static AssetBundle? _assetBundle;

  AssetBundleService._();

  AssetBundle? get getAssetBundle {
    if(_assetBundle != null) {
      return _assetBundle;
    }
    _assetBundle = rootBundle;
    return _assetBundle;
  }
}