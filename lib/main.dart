import 'package:counter_app_bloc/bloc/counter_bloc.dart';
import 'package:counter_app_bloc/ui/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => CounterBloc(),
    child: const MaterialApp(
      home: CounterScreen(),
    ),
  ));
}
