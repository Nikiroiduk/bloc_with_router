part of 'counter_cubit.dart';

@immutable
abstract class CounterState {
  int get counterValue => 0;
}

class CounterInitial extends CounterState {
  late final int _counterValue;
  CounterInitial({required int counterValue}) : _counterValue = counterValue;
  @override
  int get counterValue => _counterValue;
}
