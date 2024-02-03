import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:test_app/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test1', () {
    testWidgets('long 500 tap test 1', (tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();
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
  });
  group('end-to-end test2', () {
    testWidgets('long 500 tap test 2', (tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();
      expect(find.text("Flutter Demo Home Page"), findsOneWidget);
      Finder button = find.byKey(const Key('incrementButton'));
      for (var i = 0; i < 500; i++) {
        await tester.tap(button);
        await tester.pumpAndSettle();
      }
      await tester.pumpAndSettle();
      expect(find.text("500"), findsOneWidget);
    });
  });
  group('end-to-end test3', () {
    testWidgets('long 500 tap test 3', (tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();
      expect(find.text("Flutter Demo Home Page"), findsOneWidget);
      Finder button = find.byKey(const Key('incrementButton'));
      for (var i = 0; i < 500; i++) {
        await tester.tap(button);
        await tester.pumpAndSettle();
      }
      await tester.pumpAndSettle();
      expect(find.text("500"), findsOneWidget);
    });
  });
  group('end-to-end test4', () {
    testWidgets('long 500 tap test 4', (tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();
      expect(find.text("Flutter Demo Home Page"), findsOneWidget);
      Finder button = find.byKey(const Key('incrementButton'));
      for (var i = 0; i < 500; i++) {
        await tester.tap(button);
        await tester.pumpAndSettle();
      }
      await tester.pumpAndSettle();
      expect(find.text("500"), findsOneWidget);
    });
  });
}
