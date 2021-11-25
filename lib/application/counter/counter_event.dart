part of 'counter_bloc.dart';

@freezed
class CounterEvent with _$CounterEvent {
  const factory CounterEvent.incremented() = _Incremented;
  const factory CounterEvent.decremented() = _Decremented;
}
