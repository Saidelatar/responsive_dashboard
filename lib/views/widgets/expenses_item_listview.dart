import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key});
  static const List<ExpensesItemModel> expensesItem = [
    ExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    ExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    ExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expensesItem.length,
        itemBuilder: (context, index) {
          return AllExpensesItem(expensesItemModel: expensesItem[index]);
        });
  }
}
