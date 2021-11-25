import 'package:counter_on_steroids/data/counter_data_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_bloc.freezed.dart';
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  final CounterDataProvider _dataProvider;

  CounterBloc(this._dataProvider) : super(_dataProvider.read()) {
    on<CounterEvent>((event, emit) {
      event.when(
        incremented: () => emit(state + 1),
        decremented: () => emit(state - 1),
      );
    });
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    _dataProvider.write(change.nextState);
  }
}

const counterKeyName = 'counter';
