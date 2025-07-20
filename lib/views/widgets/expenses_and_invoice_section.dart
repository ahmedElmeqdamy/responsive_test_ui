import 'package:flutter/material.dart';
import 'package:responsive_test_ui/views/widgets/quick_invoice.dart';

import 'all_expenses.dart';

class ExpensesAndQuickInvoiceSection extends StatelessWidget {
  const ExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        AllExpenses(),
        SizedBox(height: 5,),
        QuickInvoice(),
      ],
    );
  }
}