import 'package:flutter/widgets.dart';

abstract interface class ILocalizationService {
  Future<void> init();

  Widget wrapWithLocalization({required WidgetBuilder builder});
}
