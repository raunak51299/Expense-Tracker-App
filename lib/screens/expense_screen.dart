import 'package:flutter/material.dart';
import '../widgets/expense_screen/expense_fetcher.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({super.key});
  static const name = '/expense_screen';
  @override
  Widget build(BuildContext context) {
    // get the argument passed from category_card.
    final category = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Expense Screen',)),
        backgroundColor: Color.fromARGB(255, 56, 115, 179),
      ),
      body: ExpenseFetcher(category),
    );
  }
}
