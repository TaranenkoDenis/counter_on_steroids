import 'package:counter_on_steroids/application/counter/counter_bloc.dart';
import 'package:counter_on_steroids/presentation/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Current state',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 4),
            BlocBuilder<CounterBloc, int>(
              builder: (context, state) {
                return Text(
                  state.toString(),
                  style: Theme.of(context).textTheme.headline6,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'Increment tag',
            onPressed: () {
              Navigator.of(context).pushNamed(CustomRouter.incrementRoute);
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            heroTag: 'Decrement tag',
            onPressed: () {
              Navigator.of(context).pushNamed(CustomRouter.decrementRoute);
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
