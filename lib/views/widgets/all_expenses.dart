import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/views/widgets/expenses_item_listview.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          AallExpensesHeader(),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
