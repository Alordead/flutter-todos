import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'i_localization_service.dart';

final class LocalizationService implements ILocalizationService {
  const LocalizationService({
    required this.supportedLocales,
    required this.defaultLocale,
    required this.pathToLocalizations,
  });

  final List<Locale> supportedLocales;
  final Locale defaultLocale;
  final String pathToLocalizations;

  @override
  Future<void> init() {
    return EasyLocalization.ensureInitialized();
  }

  @override
  Widget wrapWithLocalization({required WidgetBuilder builder}) {
    return EasyLocalization(
      supportedLocales: supportedLocales,
      path: pathToLocalizations,
      fallbackLocale: defaultLocale,
      useFallbackTranslations: true,
      useOnlyLangCode: true,
      child: Builder(
        builder: builder,
      ),
    );
  }
}
