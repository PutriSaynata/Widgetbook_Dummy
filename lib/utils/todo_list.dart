import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class TodoList extends StatelessWidget {
  const TodoList({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
    required String title,
  });

  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: 0,
      ),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed:  deleteFunction,
              icon: Icons.delete,
              borderRadius: BorderRadius.circular(15),
            ),
          ],
        ),
        child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
                onChanged: onChanged,
              checkColor: Colors.yellow,
              activeColor: Colors.white,
              side: const BorderSide(
                color: Colors.white,
              ),
            ),
        Text(
          taskName,
              style: TextStyle(
                color: Colors.brown,
                fontSize: 18,
                decoration: taskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                decorationColor: Colors.brown,
                decorationThickness: 2,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

@widgetbook.UseCase(
  name: 'Checked',
  type: TodoList,
)
TodoList checked (BuildContext context) {
  return TodoList(
    title: 'Checked', taskName: '', taskCompleted: true, onChanged: (bool? value) => print(value), deleteFunction: (BuildContext ) {  },
  );
}

@widgetbook.UseCase(
  name: 'unChecked',
  type: TodoList,
)
TodoList unchecked (BuildContext context) {
  return TodoList(
    title: 'unChecked', taskName: '', taskCompleted: false, onChanged: (bool? value) => print(value), deleteFunction: (BuildContext ) {  },
  );
}