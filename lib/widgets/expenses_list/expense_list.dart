import 'package:expense_tracker/model/Expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenseList});

  final List<Expense> expenseList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenseList.length,
        itemBuilder: (ctx, index) {
          return ExpenseItem(expenseList[index]);
        });
  }
}
