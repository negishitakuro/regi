import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:regi/view/filtered_todos_screen.dart';
import 'package:regi/state/filtered_todos_state.dart';
import 'package:regi/state/todos_state.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<TodosController, TodosState>(
      create: (_) => TodosController(),
      child: MaterialApp(
        title: 'RegiRegi',
        debugShowCheckedModeBanner: false,
        home:
            StateNotifierProvider<FilteredTodosController, FilteredTodosState>(
          create: (_) => FilteredTodosController(),
          child: FilteredTodosScreen(),
        ),
      ),
    );
  }
}
