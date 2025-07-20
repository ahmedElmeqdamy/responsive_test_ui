import 'package:flutter/material.dart';

import 'package:responsive_test_ui/views/widgets/quick_invoice_form.dart';
import 'package:responsive_test_ui/views/widgets/quick_invoice_header.dart';


import 'custom_background_container.dart';

import 'latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LatestTransaction(),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),QuickInvoiceForm(),
      ],
    ));
  }
}


