import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int selectedIndex = 0;
  final List<ExpensesItemModel> expensesItem = [
    const ExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    const ExpensesItemModel(
        image: Assets.imagesCardSend,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const ExpensesItemModel(
        image: Assets.imagesCardSend,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
          children: expensesItem.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(
                    isSelected: selectedIndex == index,
                    expensesItemModel: item),
              ),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: AllExpensesItem(
                      isSelected: selectedIndex == index,
                      expensesItemModel: item)));
        }
      }).toList()),
    );
  }
}
