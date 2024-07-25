import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_quick_invoice_section.dart';
import 'package:responsive_dashboard/views/widgets/custom_darwer.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_transaction_section.dart';

class TabletDashboardLayout extends StatelessWidget {
  const TabletDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDarwer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(flex: 2, child: AllExpensesQuickInvoiceSection()),
              Expanded(child: MyCardsTransactionSection())
            ],
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
