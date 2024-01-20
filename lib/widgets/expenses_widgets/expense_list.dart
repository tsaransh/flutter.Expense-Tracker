import 'package:expense_tracker/model/Expense.dart';
import 'package:expense_tracker/widgets/expenses_widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList(
      {super.key, required this.expenseList, required this.onRemoveExpense});

  final List<Expense> expenseList;

  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenseList.length,
        itemBuilder: (ctx, index) {
          return Dismissible(
              background: Container(
                color: Theme.of(context).colorScheme.error,
                margin: EdgeInsets.symmetric(
                    horizontal: Theme.of(context).cardTheme.margin!.horizontal),
              ),
              onDismissed: (direction) {
                onRemoveExpense(expenseList[index]);
              },
              key: ValueKey(expenseList[index]),
              child: ExpenseItem(expenseList[index]));
        });
  }
}
