// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_app/main.dart';

void main() {
  testWidgets('long 500 tap test 1', (tester) async {
    await tester.pumpWidget(const MyApp());
    // Adding this sleep here to allow test to run on Test Labs a little longer
    expect(find.text("Flutter Demo Home Page"), findsOneWidget);
    Finder button = find.byKey(const Key('incrementButton'));
    for (var i = 0; i < 500; i++) {
      await tester.tap(button);
      await tester.pumpAndSettle();
    }
    await tester.pumpAndSettle();
    expect(find.text("500"), findsOneWidget);
  });
}
