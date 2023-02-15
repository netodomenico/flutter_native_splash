part of flutter_native_splash_cli;

class _FlavorHelper {
  _FlavorHelper(this._flavor) {
    if (_flavor != null) {
      _androidResFolder = 'android/app/src/$_flavor/res/';
      _iOSFlavorName = _flavor;
    } else {
      _androidResFolder = 'android/app/src/main/res/';
      _iOSFlavorName = '';
    }
  }

  // Android related path values
  final String? _flavor;
  late String _androidResFolder;

  String? get flavor {
    return _flavor;
  }

  String get androidResFolder {
    return _androidResFolder;
  }

  String get androidDrawableFolder {
    return '${_androidResFolder}drawable/';
  }

  String get androidNightDrawableFolder {
    return '${_androidResFolder}drawable-night/';
  }

  String get androidLaunchBackgroundFile {
    return '${androidDrawableFolder}launch_background.xml';
  }

  String get androidLaunchDarkBackgroundFile {
    return '${androidNightDrawableFolder}launch_background.xml';
  }

  String get androidStylesFile {
    return '${_androidResFolder}values/styles.xml';
  }

  String get androidNightStylesFile {
    return '${_androidResFolder}values-night/styles.xml';
  }

  String get androidV31StylesFile {
    return '${_androidResFolder}values-v31/styles.xml';
  }

  String get androidV31StylesNightFile {
    return '${_androidResFolder}values-night-v31/styles.xml';
  }

  String get androidV21DrawableFolder {
    return '${_androidResFolder}drawable-v21/';
  }

  String get androidV21LaunchBackgroundFile {
    return '${androidV21DrawableFolder}launch_background.xml';
  }

  String get androidNightV21DrawableFolder {
    return '${_androidResFolder}drawable-night-v21/';
  }

  String get androidV21LaunchDarkBackgroundFile {
    return '${androidNightV21DrawableFolder}launch_background.xml';
  }

  String get androidManifestFile {
    return 'android/app/src/main/AndroidManifest.xml';
  }

  // iOS related values
  late String? _iOSFlavorName;

  String? get iOSFlavorName {
    return _iOSFlavorName;
  }

  String get iOSAssetsLaunchImageFolder {
    return 'ios/Runner/Assets.xcassets/${_iOSFlavorName}LaunchImage.imageset/';
  }

  String get iOSAssetsBrandingImageFolder {
    return 'ios/Runner/Assets.xcassets/${_iOSFlavorName}BrandingImage.imageset/';
  }

  String get iOSLaunchScreenStoryboardFile {
    return 'ios/Runner/Base.lproj/$iOSLaunchScreenStoryboardName.storyboard';
  }

  String get iOSLaunchScreenStoryboardName {
    return '${_iOSFlavorName}LaunchScreen';
  }

  String get iOSInfoPlistFile {
    return 'ios/Runner/Info.plist';
  }

  String get iOSAssetsLaunchImageBackgroundFolder {
    return 'ios/Runner/Assets.xcassets/${_iOSFlavorName}LaunchBackground.imageset/';
  }

  String get iOSLaunchScreenStoryBoardContent {
    return _iOSLaunchScreenStoryboardContent.replaceAll(
      '[LAUNCH_IMAGE_PLACEHOLDER]',
      iOSLaunchImageName,
    );
  }

  String get iOSLaunchImageName {
    if (_iOSFlavorName == null) {
      return 'LaunchImage';
    } else {
      return '${_iOSFlavorName}LaunchImage';
    }
  }

  String get iOSBrandingImageName {
    if (_iOSFlavorName == null) {
      return 'BrandingImage';
    } else {
      return '${_iOSFlavorName}BrandingImage';
    }
  }

  String get iOSBrandingSubView {
    return _iOSBrandingSubview.replaceAll(
      '[BRANDING_IMAGE_PLACEHOLDER]',
      iOSBrandingImageName,
    );
  }

  String get iOSLaunchBackgroundName {
    if (_iOSFlavorName == null) {
      return 'LaunchBackground';
    } else {
      return '${_iOSFlavorName}LaunchBackground';
    }
  }

  String get iOSLaunchBackgroundSubView {
    return _iOSLaunchBackgroundSubview.replaceAll(
      '[LAUNCH_BACKGROUND_PLACEHOLDER]',
      iOSLaunchBackgroundName,
    );
  }
}
