import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/custom_darwer.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';

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
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SliverToBoxAdapter(
                  child: AllExpenses(),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 24,
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Expanded(child: QuickInvoice()),
                )
              ],
            )

            /* Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                AllExpenses(),
                SizedBox(
                  height: 24,
                ),
                QuickInvoice(),
              ],
            )*/
            )
      ],
    );
  }
}
