import 'package:flutter/services.dart';

final class AssetBundleService {
  static final AssetBundleService instance = AssetBundleService._();
  AssetBundle? _assetBundle;

  AssetBundleService._();

  AssetBundle? get getParameterAssetBundle {
    if(_assetBundle != null) {
      return _assetBundle;
    }
    _assetBundle = rootBundle;
    return _assetBundle;
  }
}