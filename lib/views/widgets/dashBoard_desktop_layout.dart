import 'package:flutter/material.dart';
import 'package:responsive_test_ui/views/widgets/custom_drawer.dart';
import 'package:responsive_test_ui/views/widgets/income_section.dart';


import 'expenses_and_invoice_section.dart';
import 'my_card_and_transaction_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 20),
        Expanded(
          flex: 3,
          child:CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child : Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: ExpensesAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        children: [
                          MyCardAndTransactionSection(),
                          SizedBox(height: 12),
                          Expanded(child: IncomeSection()),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ),

        // Expanded(child: MyCardSection()),
      ],
    );
  }
}
