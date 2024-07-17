import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_header.dart';

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
          AllExpensesItem(
            expensesItemModel: ExpensesItemModel(
                image: Assets.imagesExpenses,
                title: 'Income',
                date: 'April 2022',
                price: r'$20,129'),
          ),
        ],
      ),
    );
  }
}
