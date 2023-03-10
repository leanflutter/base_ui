import 'package:base_ui_core/base_ui_core.dart';
import 'package:base_ui_test/base_ui_test.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('golden test', (tester) async {
    await loadTestFonts();
    await tester.binding.setSurfaceSize(const Size(200, 200));

    await tester.pumpWidget(const TestWidgetApp(
      child: Blockquote(
        cite: 'test-cite',
        child: Text('test-quote'),
      ),
    ));

    await expectLater(
      find.byType(Blockquote),
      matchesGoldenFile('goldens/blockquote.png'),
    );
  });
}
