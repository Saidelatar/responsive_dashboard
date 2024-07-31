import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_quick_invoice_section.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_transaction_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardsTransactionSection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection()
        ],
      ),
    );
  }
}
