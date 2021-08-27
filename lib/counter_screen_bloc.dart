import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'counter_repository.dart';

part 'counter_screen_event.dart';
part 'counter_screen_state.dart';

class CounterScreenBloc extends Bloc<CounterScreenEvent, CounterScreenState> {
  CounterScreenBloc() : super(ShowCounterValue(0));

  int counterValue = 0;

  @override
  Stream<CounterScreenState> mapEventToState(CounterScreenEvent event) async* {
    if (event is IncrementCounterValue) {
      this.counterValue++;
      yield ShowCounterValue(counterValue);
    }

    if (event is DecrementCounterValue) {
      this.counterValue--;
      yield ShowCounterValue(counterValue);
    }

    if (event is GenerateRandomCounterValue) {
      yield ShowLoadingCounterScreen();
      counterValue = await CounterRepo().getRandomValue();
      yield ShowCounterValue(counterValue);
    }
  }
}
