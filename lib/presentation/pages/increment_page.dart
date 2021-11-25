import 'package:counter_on_steroids/application/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncrementPage extends StatelessWidget {
  const IncrementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Increment'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<CounterBloc, int>(
              builder: (context, state) {
                return Text(
                  'Current state: $state',
                  style: Theme.of(context).textTheme.headline5,
                );
              },
            ),
            TextButton(
              child: const Text(
                'Increment',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                BlocProvider.of<CounterBloc>(context).add(
                  const CounterEvent.incremented(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
