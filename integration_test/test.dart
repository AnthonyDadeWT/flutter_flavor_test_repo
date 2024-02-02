import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:test_app/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test1', () {
    testWidgets('40 min test', (tester) async {
      await tester.pumpWidget(const MyApp());
      // Adding this sleep here to allow test to run on Test Labs a little longer
      await Future.delayed(const Duration(minutes: 1));
      expect(find.text("Flutter Demo Home Page"), findsOneWidget);
      Finder button = find.byKey(const Key('incrementButton'));
      await tester.tap(button);
      await tester.tap(button);
      await tester.pumpAndSettle();
      expect(find.text("2"), findsOneWidget);
    });
  });
  group('end-to-end test2', () {
    testWidgets('tap on the floating action button, verify counter',
        (tester) async {
      await tester.pumpWidget(const MyApp());
      // Adding this sleep here to allow test to run on Test Labs a little longer
      await Future.delayed(const Duration(minutes: 1));
      expect(find.text("Flutter Demo Home Page"), findsOneWidget);
      Finder button = find.byKey(const Key('incrementButton'));
      await tester.tap(button);
      await tester.tap(button);
      await tester.tap(button);
      await tester.pumpAndSettle();
      expect(find.text('3'), findsOneWidget);
    });
  });
}
