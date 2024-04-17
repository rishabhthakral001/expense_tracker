import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class TotalExpense extends StatefulWidget {
  const TotalExpense({super.key, required this.expenses});
  final List<Expense> expenses;

  @override
  State<TotalExpense> createState() {
    return _TotalExpenseState();
  }
}

class _TotalExpenseState extends State<TotalExpense> {
  @override
  Widget build(BuildContext context) {
    double sum = 0;
    for (final expense in widget.expenses) {
      sum += expense.amount;
    }
    return Container(
      margin: const EdgeInsets.all(16),
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primary.withOpacity(0.5),
            Theme.of(context).colorScheme.primary.withOpacity(0.3),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Row(
        children: [
          Text(
            "Total Expenses",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Spacer(),
          Text(
            "₹${sum.toString()}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
