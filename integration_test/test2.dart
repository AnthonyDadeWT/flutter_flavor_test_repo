import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:test_app/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('test 2', () {
    testWidgets('test file 2', (tester) async {
      await tester.pumpWidget(const MyApp());
      // Adding this sleep here to allow test to run on Test Labs a little longer
      await Future.delayed(Duration(minutes: 5));
      expect(find.text("Flutter Demo Home Page"), findsOneWidget);
    });
  });
}
