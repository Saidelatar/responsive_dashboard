import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_quick_invoice_section.dart';
import 'package:responsive_dashboard/views/widgets/custom_darwer.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_transaction_section.dart';

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
          child: Padding(
            padding: EdgeInsets.only(top: 40, bottom: 32),
            child: AllExpensesQuickInvoiceSection(),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 1,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              SliverToBoxAdapter(
                child: MyCardsTransactionSection(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 22,
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: IncomeSection(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 15,
                ),
              )
            ],
          ),
        ),

        /*Expanded(
          flex: 1,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              MyCardsTransactionSection(),
              SizedBox(
                height: 24,
              ),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: IncomeSection()),
              ),
            ],
          ),
        ),*/
      ],
    );
  }
}
