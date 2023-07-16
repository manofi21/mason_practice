import 'package:flutter/material.dart';
import 'package:practice_mason_packages/feature_route_bloc/counter_app/counter_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterAppView extends StatelessWidget {
  const CounterAppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<CounterAppBloc, CounterAppState>(
      listener: (context, state) {
        if (state.status == CounterAppStatus.error) {
          // Handle Error
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: const _CounterAppForm(),
      ),
    );
  }
}

class _CounterAppForm extends StatelessWidget {
  const _CounterAppForm();

  @override
  Widget build(BuildContext context) {
    final status = context.select((CounterAppBloc bloc) => bloc.state.status);

    if (status == CounterAppStatus.loading) {
      return const Placeholder();
    }
    return const Placeholder();
  }
}
