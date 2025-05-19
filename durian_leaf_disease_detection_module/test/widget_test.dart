import 'package:flutter_test/flutter_test.dart';
import 'package:durian_leaf_disease_detection_module/main.dart';

void main() {
  testWidgets('Splash screen has Get Started button', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const IndaiApp());

    expect(find.text('Get Started'), findsOneWidget);
  });
}
