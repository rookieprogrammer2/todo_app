import 'package:flutter/material.dart';
import 'package:todo_app/ui/screens/todos_sc/todo_widget.dart';

class TodosList extends StatelessWidget {
  const TodosList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
      return const TodoWidget();
    },
    );
  }
}
