import 'dart:ui';

import 'package:counter_app_bloc/bloc/counter_bloc.dart';
import 'package:counter_app_bloc/bloc/counter_event.dart';
import 'package:counter_app_bloc/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
            return Center(
              child: Text(
                state.counter.toString(),
                style: const TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold
                ),
              ),
            );
          },)
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(DecrementCounter());
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () { context.read<CounterBloc>().add(IncrementCounter());},
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
