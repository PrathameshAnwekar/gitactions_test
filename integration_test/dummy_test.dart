import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gitactions_test/main.dart' as app;

void main() {
  group('Counter App Integration Test', () {
    testWidgets('Test Counter Increment', (WidgetTester tester) async {
      // Build the widget tree.
      app.main();
      await tester.pumpAndSettle();

      // Find the increment button.
      final incrementButton = find.byKey(const ValueKey('incrementButton'));

      // Verify that the counter starts at 0.
      expect(find.text('0'), findsOneWidget);

      // Tap the increment button.
      await tester.tap(incrementButton);

      // Rebuild the widget tree after the state has changed.
      await tester.pump();

      // Verify that the counter has incremented to 1.
      expect(find.text('1'), findsOneWidget);
    });
  });
}
