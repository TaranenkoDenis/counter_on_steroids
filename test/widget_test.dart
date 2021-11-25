// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:counter_on_steroids/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  const initialCounterValue = 5;
  const counterKey = 'counter';

  SharedPreferences.setMockInitialValues({counterKey: initialCounterValue});

  final sharedPrefs = await SharedPreferences.getInstance();

  testWidgets('Initial counter value the save as in storage.',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(CounterApp(localStorage: sharedPrefs));

    // Verify that our counter starts at initialCounterValue.
    expect(find.text('$initialCounterValue'), findsOneWidget);
  });
}
