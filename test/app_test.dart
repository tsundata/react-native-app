import 'package:flow/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Main app", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
  });
}
