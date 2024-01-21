import 'dart:ui';

/// Note(alordead): This simple example does not support theme changing.
/// Instead we use strongly designed design system.
abstract class AppColors {
  /// Default
  static const white = Color.fromRGBO(255, 255, 255, 1);
  static const black = Color.fromRGBO(0, 0, 0, 1);

  // Background
  static const backgroundPrimary = Color.fromRGBO(24, 24, 24, 1);

  // Accent
  static const accentPrimary = Color.fromRGBO(249, 69, 134, 1);

  // Font
  static const fontPrimary = Color.fromRGBO(255, 255, 255, 1);
}
