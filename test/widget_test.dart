// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:first_flutter_app/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Renders AppBar title', (WidgetTester tester) async {
    await tester.pumpWidget(App());

    expect(find.text("I am Tesa Tesanovic"), findsOneWidget);
  });
}
