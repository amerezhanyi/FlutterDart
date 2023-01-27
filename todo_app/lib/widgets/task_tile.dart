import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isCompleted;
  final void Function(bool?) onChange;
  final Function(BuildContext) onDelete;

  const TaskTile({
    super.key,
    required this.title,
    required this.isCompleted,
    required this.onChange,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              borderRadius: BorderRadius.circular(8),
              onPressed: onDelete,
              icon: Icons.delete,
              backgroundColor: Theme.of(context).selectedRowColor,
            )
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Checkbox(
                value: isCompleted,
                onChanged: onChange,
                activeColor: Theme.of(context).highlightColor,
              ),
              Text(
                title,
                style: TextStyle(
                  decoration: isCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
