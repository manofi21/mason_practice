import 'package:flutter/material.dart';
import 'package:practice_mason_packages/feature_route_bloc/counter_app/counter_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterAppRoute extends StatelessWidget {
  const CounterAppRoute({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (ctx) {
        return BlocProvider(
          create: (_) => CounterAppBloc(),
          child: const CounterAppView(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const CounterAppView();
  }
}