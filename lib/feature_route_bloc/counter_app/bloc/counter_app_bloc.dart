import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_app_event.dart';
part 'counter_app_state.dart';

class CounterAppBloc extends Bloc<CounterAppEvent, CounterAppState> {
  
  CounterAppBloc() : super(const CounterAppState.initial());

}
