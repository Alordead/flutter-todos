import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_kit/ui_kit.dart';

void main() {
  group('AppColors', () {
    Widget _createTestWidget() {
      return const MaterialApp(
        home: Scaffold(
          body: _AppColors(),
        ),
      );
    }

    testWidgets(
      'renders app colors',
      (tester) async {
        await tester.pumpWidget(_createTestWidget());

        await tester.pump();

        await expectLater(
          find.byType(Scaffold),
          matchesGoldenFile('.golden/app_colors.png'),
        );
      },
    );
  });
}

class _AppColors extends StatelessWidget {
  const _AppColors();

  static const Map<String, Color> colorsByKey = <String, Color>{
    'Default / White': AppColors.white,
    'Default / Black': AppColors.black,
    'Background / Primary': AppColors.backgroundPrimary,
    'Accent / Primary': AppColors.accentPrimary,
    'Font / Primary': AppColors.fontPrimary,
  };

  @override
  Widget build(BuildContext context) {
    final colorWidgets = colorsByKey.entries.map<Widget>((entry) {
      return _ColorBlock(
        color: entry.value,
      );
    }).toList();

    return Wrap(
      children: colorWidgets,
    );
  }
}

class _ColorBlock extends StatelessWidget {
  const _ColorBlock({
    required this.color,
    Key? key,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.0,
      width: 64.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
        ),
      ),
    );
  }
}
