import 'package:counter_on_steroids/application/counter/counter_bloc.dart';
import 'package:counter_on_steroids/data/counter_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'presentation/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final localStorage = await SharedPreferences.getInstance();

  runApp(CounterApp(localStorage: localStorage));
}

class CounterApp extends StatelessWidget {
  final SharedPreferences localStorage;

  const CounterApp({Key? key, required this.localStorage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterBloc(
        CounterDataProvider(localStorage),
      ),
      child: MaterialApp(
        title: 'Counter on steroids',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: CustomRouter.homeRoute,
        onGenerateRoute: CustomRouter.generateRoute,
      ),
    );
  }
}
