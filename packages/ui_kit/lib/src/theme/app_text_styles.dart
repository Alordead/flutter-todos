import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class _Height {
  static const h32 = 32.0;
  static const h20 = 20.0;
  static const h18 = 18.0;
}

abstract class _Size {
  static const s26 = 26.0;
  static const s16 = 16.0;
  static const s14 = 14.0;
}

abstract class AppTextStyles {
  /// Title
  ///
  /// Title Bold 26/32
  static final title = _baseUbuntuFontStyle.copyWith(
    fontSize: _Size.s26,
    fontWeight: FontWeight.w700,
    height: _Height.h32 / _Size.s26,
  );

  /// Headline
  ///
  /// Headline Medium 14/18
  static final headline = _baseUbuntuFontStyle.copyWith(
    fontSize: _Size.s14,
    fontWeight: FontWeight.w500,
    height: _Height.h18 / _Size.s14,
  );

  /// Body
  ///
  /// Body Regular 16/20
  static final body = _baseUbuntuFontStyle.copyWith(
    fontSize: _Size.s16,
    fontWeight: FontWeight.w400,
    height: _Height.h20 / _Size.s16,
  );

  /// Base
  static const _baseUbuntuFontStyle = TextStyle(
    color: AppColors.fontPrimary,
    fontFamily: ubuntuTextFamily,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );

  static const ubuntuTextFamily = 'Ubuntu';
}
