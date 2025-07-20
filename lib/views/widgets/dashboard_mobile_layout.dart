import 'package:flutter/material.dart';

import 'expenses_and_invoice_section.dart';
import 'income_section.dart';
import 'my_card_and_transaction_section.dart';
class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpensesAndQuickInvoiceSection(),
          MyCardAndTransactionSection(),
          IncomeSection(),
        ],
      ),
    );
  }
}