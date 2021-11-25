import 'package:counter_on_steroids/data/counter_data_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  const initialCounterValue = 5;
  const counterKey = 'counter';

  SharedPreferences.setMockInitialValues({counterKey: initialCounterValue});

  final sharedPrefs = await SharedPreferences.getInstance();

  group('CounterDataProvider', () {
    final provider = CounterDataProvider(sharedPrefs);

    test('Initial value should be the same as saved before.', () {
      expect(provider.read(), initialCounterValue);
    });

    test('The value should be the same as written.', () {
      const newValue = 10;

      provider.write(newValue);
      expect(provider.read(), newValue);
    });
  });
}
