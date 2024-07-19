import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/range_options.dart';

class AallExpensesHeader extends StatelessWidget {
  const AallExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        const Expanded(child: SizedBox()),
        const RangeOptions()
      ],
    );
  }
}
