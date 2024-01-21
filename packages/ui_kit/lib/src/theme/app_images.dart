import 'package:ui_kit/src/theme/package_name.dart';

abstract class AppImages {
  static final illustration = '$_basePath/illustration.png';

  static String get _basePath => packageName != null
      ? 'packages/$packageName/assets/images/png'
      : 'assets/images/svg';
}
