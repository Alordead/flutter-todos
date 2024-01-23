import 'package:flutter/material.dart';

import 'package:ui_kit/ui_kit.dart';

class TileWidget extends StatelessWidget {
  const TileWidget._({
    required this.title,
    this.onTap,
    super.key,
  });

  factory TileWidget.checkbox({
    required String title,
    required bool value,
    required ValueChanged<bool?> onChanged,
    Key? key,
  }) {
    return _TileWidgetCheckbox(
      title: title,
      value: value,
      onChanged: onChanged,
      key: key,
    );
  }

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    throw UnsupportedError('No implementation available for TileView class');
  }
}

class _TileWidgetCheckbox extends TileWidget {
  const _TileWidgetCheckbox({
    required String title,
    required this.value,
    required this.onChanged,
    Key? key,
  }) : super._(
          title: title,
          key: key,
        );

  final bool value;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: AppTextStyles.body),
      trailing: Checkbox(
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
