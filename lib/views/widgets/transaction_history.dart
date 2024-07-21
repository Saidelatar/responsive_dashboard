import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_section.dart';
import 'package:responsive_dashboard/views/widgets/transaction_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCardsSection(),
          const Divider(
            color: Color(0xffF1F1F1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Transaction History',
                style: AppStyles.styleSemiBold20,
              ),
              Text(
                'See all',
                style: AppStyles.styleMedium16
                    .copyWith(color: const Color(0xff4EB7F2)),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '13 April 2022',
            style: AppStyles.styleMedium16
                .copyWith(color: const Color(0xff4EB7F2)),
          ),
          const SizedBox(
            width: 16,
          ),
          const TransactionListView(),
        ],
      ),
    );
  }
}
