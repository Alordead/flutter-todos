import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgAsset extends StatelessWidget {
  const SvgAsset(
    this._assetName, {
    this.color,
    this.width,
    this.height,
    this.alignment,
    this.fit,
    super.key,
  });

  /// Asset name
  final String _assetName;

  /// The default color applied to SVG.
  final Color? color;

  /// If specified, the width to use for the SVG. If unspecified, the SVG
  /// will take the width of its parent.
  final double? width;

  /// If specified, the height to use for the SVG. If unspecified, the SVG
  /// will take the height of its parent.
  final double? height;

  /// How to inscribe the picture into the space allocated during layout.
  /// The default is [BoxFit.contain].
  final BoxFit? fit;

  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    final color = this.color;

    return SvgPicture.asset(
      _assetName,
      alignment: alignment ?? Alignment.center,
      fit: fit ?? BoxFit.contain,
      colorFilter: color == null
          ? null
          : ColorFilter.mode(
              color,
              BlendMode.srcIn,
            ),
      height: height,
      width: width,
    );
  }
}
