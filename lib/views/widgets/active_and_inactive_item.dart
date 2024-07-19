import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_header.dart';

class InActiveitem extends StatelessWidget {
  const InActiveitem({
    super.key,
    required this.expensesItemModel,
  });

  final ExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            imageBackgroundColor: const Color(0xffFAFAFA),
            imageColor: const Color(0xff4EB7F2),
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

class Activeitem extends StatelessWidget {
  const Activeitem({
    super.key,
    required this.expensesItemModel,
  });

  final ExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: const Color(0xff4EB7F2),
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
            imageColor: const Color(0xffffffff),
            iconColor: Colors.white,
            imageBackgroundColor: Colors.white.withOpacity(0.10000000149),
            image: expensesItemModel.image,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 20, left: 20),
            child: Text(
              expensesItemModel.title,
              style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 20, left: 20),
            child: Text(
              expensesItemModel.date,
              style: AppStyles.styleRegular14.copyWith(
                color: const Color(0xffFAFAFA),
              ),
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
                  .copyWith(color: const Color(0xffffffff)),
            ),
          ),
        ],
      ),
    );
  }
}
