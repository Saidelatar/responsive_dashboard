import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_quick_invoice_section.dart';
import 'package:responsive_dashboard/views/widgets/custom_darwer.dart';
import 'package:responsive_dashboard/views/widgets/dot_indicator.dart';

import 'package:responsive_dashboard/views/widgets/my_card_page_view.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDarwer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: AllExpensesQuickInvoiceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(child: MyCardPageView()),
        DotIndicator(),
      ],
    );
  }
}
