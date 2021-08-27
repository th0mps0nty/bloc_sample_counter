part of 'counter_screen_bloc.dart';

class CounterScreenState extends Equatable {
  @override
  List<Object> get props => [];
}

class ShowLoadingCounterScreen extends CounterScreenState {}

class ShowCounterValue extends CounterScreenState {
  @override
  List<Object> get props => [counterValue];

  final int counterValue;

  ShowCounterValue(this.counterValue);
}