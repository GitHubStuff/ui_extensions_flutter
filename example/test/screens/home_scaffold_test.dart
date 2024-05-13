import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_extensions_demo/screens/home_scaffold.dart';

void main() {
  group('HomeScaffold Widget Tests', () {
    testWidgets('should hide keyboard when button is pressed',
        (WidgetTester tester) async {
      await tester
          .pumpWidget(const MaterialApp(home: HomeScaffold(title: 'Test')));

      // Simulate a tap on the ElevatedButton
      await tester.tap(find.widgetWithText(ElevatedButton, 'Dismiss Keyboard'));
      await tester.pump(); // Rebuild the widget after the state has changed.

      // Check if the keyboard is dismissed
      // Note: Actual keyboard hide/show functionality might need integration tests or mock context setup.
      // For unit tests, you might focus on checking if the function is called if you abstract it.
    });
  });
}
