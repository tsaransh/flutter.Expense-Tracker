import 'package:expense_tracker/widgets/expenses_list/expense_list.dart';
import 'package:expense_tracker/model/Expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpenseState();
  }
}

class _ExpenseState extends State<Expenses> {
  final List<Expense> _expenseList = [
    Expense(
        title: "Movie",
        amount: 399,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: "Mill",
        amount: 25,
        date: DateTime.now(),
        category: Category.food)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("The Chart"),
          Expanded(child: ExpenseList(expenseList: _expenseList)),
        ],
      ),
    );
  }
}
