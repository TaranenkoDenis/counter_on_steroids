import 'package:bloc_test/bloc_test.dart';
import 'package:counter_on_steroids/application/counter/counter_bloc.dart';
import 'package:counter_on_steroids/data/counter_data_provider.dart';
import 'package:flutter_test/flutter_test.dart';

class CounterDataProviderMock implements CounterDataProvider {
  int value;

  CounterDataProviderMock(this.value);

  @override
  int read() {
    return value;
  }

  @override
  void write(int newValue) {
    value = newValue;
  }
}

void main() {
  group('CounterBloc', () {
    test('Initial value should be the same as in data provider.', () {
      final bloc = CounterBloc(CounterDataProviderMock(0));
      expect(bloc.state, 0);
    });

    blocTest(
      'Emits a value 1 more than the previous or saved after the increment.',
      build: () => CounterBloc(CounterDataProviderMock(0)),
      act: (CounterBloc bloc) => bloc.add(const CounterEvent.incremented()),
      expect: () => [1],
    );

    blocTest(
      'Emits a value 1 less than the previous or saved after the decrement.',
      build: () => CounterBloc(CounterDataProviderMock(0)),
      act: (CounterBloc bloc) => bloc.add(const CounterEvent.decremented()),
      expect: () => [-1],
    );

    blocTest(
      'Emits a value 1 less than the previous or saved after the decrement.',
      build: () => CounterBloc(CounterDataProviderMock(10)),
      act: (CounterBloc bloc) => bloc.add(const CounterEvent.decremented()),
      expect: () => [9],
    );
  });

  group('Saving state of the CounterBloc', () {
    final dataProvider = CounterDataProviderMock(10);
    const expectedNewValueAfterIncrement = 11;

    blocTest(
      'Emits a value 1 more than the previous after the increment.',
      build: () => CounterBloc(dataProvider),
      act: (CounterBloc bloc) => bloc.add(const CounterEvent.incremented()),
      expect: () => [expectedNewValueAfterIncrement],
    );

    test('After changing state in bloc saved state should be the same.', () {
      expect(dataProvider.value, expectedNewValueAfterIncrement);
    });
  });
}
