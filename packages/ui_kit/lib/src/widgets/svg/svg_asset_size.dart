import 'package:flutter/material.dart';

import 'svg.dart';

enum SvgAssetSize {
  rectMedium(
    height: 24.0,
    width: 24.0,
  ),

  rectLarge(
    height: 48.0,
    width: 48.0,
  );

  const SvgAssetSize({
    required this.height,
    required this.width,
  });

  final double height;
  final double width;
}

class SvgAssetBox extends StatelessWidget {
  const SvgAssetBox._({
    required this.svgAsset,
    required this.svgAssetSize,
    super.key,
  });

  factory SvgAssetBox.square24({
    required SvgAsset svgAsset,
    Key? key,
  }) =>
      SvgAssetBox._(
        svgAsset: svgAsset,
        svgAssetSize: SvgAssetSize.rectMedium,
        key: key,
      );

  factory SvgAssetBox.square48({
    required SvgAsset svgAsset,
    Key? key,
  }) =>
      SvgAssetBox._(
        svgAsset: svgAsset,
        svgAssetSize: SvgAssetSize.rectLarge,
        key: key,
      );

  final SvgAsset svgAsset;
  final SvgAssetSize svgAssetSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: svgAssetSize.height,
      width: svgAssetSize.width,
      child: svgAsset,
    );
  }
}
