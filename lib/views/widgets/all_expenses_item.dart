import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  final ExpensesItemModel expensesItemModel;
  const AllExpensesItem({super.key, required this.expensesItemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
        side: const BorderSide(
          width: 1,
          color: Color(0xffF1F1F1),
        ),
        borderRadius: BorderRadius.circular(12),
      )),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: expensesItemModel.image,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 20, left: 20),
            child: Text(
              expensesItemModel.title,
              style: AppStyles.styleSemiBold16,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 20, left: 20),
            child: Text(
              expensesItemModel.date,
              style: AppStyles.styleRegular14,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 16, bottom: 16, right: 20, left: 20),
            child: Text(
              expensesItemModel.price,
              style: AppStyles.styleSemiBold24
                  .copyWith(color: const Color(0xff4EB7F2)),
            ),
          ),
        ],
      ),
    );
  }
}
