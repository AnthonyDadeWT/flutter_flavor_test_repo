import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:test_app/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test1', () {
    testWidgets('tap on the floating action button, verify counter',
        (tester) async {
      await tester.pumpWidget(const MyApp());
      // Adding this sleep here to allow test to run on Test Labs a little longer
      await Future.delayed(Duration(seconds: 3));
      expect(find.text("Flutter Demo Home Page"), findsOneWidget);
    });
  });
  group('end-to-end test2', () {
    testWidgets('tap on the floating action button, verify counter',
        (tester) async {
      await tester.pumpWidget(const MyApp());
      // Adding this sleep here to allow test to run on Test Labs a little longer
      await Future.delayed(Duration(seconds: 3));
      expect(find.text("Flutter Demo Home Page"), findsOneWidget);
    });
  });
}
