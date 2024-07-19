import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/views/widgets/active_and_inactive_item.dart';

class AllExpensesItem extends StatelessWidget {
  final bool isSelected;
  final ExpensesItemModel expensesItemModel;
  const AllExpensesItem(
      {super.key, required this.expensesItemModel, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Activeitem(expensesItemModel: expensesItemModel)
        : InActiveitem(expensesItemModel: expensesItemModel);
  }
}
