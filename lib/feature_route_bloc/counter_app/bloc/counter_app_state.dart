part of 'counter_app_bloc.dart';

enum CounterAppStatus {
  initial,
  loading,
  loaded,
  error,
}

class CounterAppState extends Equatable {
  const CounterAppState({
    required this.status,
  });

  const CounterAppState.initial()
      : this(        
          status: CounterAppStatus.initial,
        );

  final CounterAppStatus status;

  CounterAppState copyWith({
    CounterAppStatus? status,
  }) {
    return CounterAppState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [
        status,
      ];
}
