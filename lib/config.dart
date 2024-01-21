import 'dart:ui';

/// Note(alordead): Best option – use Firebase Config or something similar.
/// But for this example we will use this simple class.
abstract class AppConfig {
  // Base Urls
  static const todosApiBaseUrl = 'https://jsonplaceholder.typicode.com';

  // Localizations
  static const defaultLocale = Locale('en');
  static const supportedLocales = [Locale('en'), Locale('es')];
  static const localizationPath = 'assets/translations';
}
