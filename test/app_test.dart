import 'package:flow/app/modules/home/views/home_view.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Main app", (WidgetTester tester) async {
    await tester.pumpWidget(HomeView());
  });
}
