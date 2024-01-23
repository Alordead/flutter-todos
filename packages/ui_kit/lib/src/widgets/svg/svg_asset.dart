import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgAsset extends StatelessWidget {
  const SvgAsset(
    this._assetName, {
    this.color,
    this.width,
    this.height,
    this.alignment = Alignment.center,
    this.fit = BoxFit.contain,
    super.key,
  });

  final String _assetName;
  final Color? color;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    final color = this.color;

    return SvgPicture.asset(
      _assetName,
      alignment: alignment,
      fit: fit,
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
