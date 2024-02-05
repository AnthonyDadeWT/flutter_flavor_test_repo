import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:test_app/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('test 2', () {
    testWidgets('test file 2 test 1', (tester) async {
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
  });
}
