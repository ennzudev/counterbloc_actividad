//import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int _counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on<ResetEvent>(_reset);
    on<DecrementEvent>(_decrementar);
    on<IncrementEvent>(_incrementar);
  }

  _reset(event, emit) {
    _counter = 0;
    emit(JuanState(counter: _counter));
  }

  _incrementar(event, emit) {
    _counter++;
    emit(JuanState(counter: _counter));
  }

  _decrementar(event, emit) {
    _counter--;
    emit(JuanState(counter: _counter));
  }
}
