import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'counter_bloc.freezed.dart';
part 'counter_event.dart';

class CounterBloc extends HydratedBloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>((event, emit) {
      event.when(
        incremented: () => emit(state + 1),
        decremented: () => emit(state - 1),
      );
    });
  }

  @override
  int fromJson(Map<String, dynamic> json) => json['counter'] as int;

  @override
  Map<String, int> toJson(int state) => {'counter': state};
}
