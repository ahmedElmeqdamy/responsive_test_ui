import 'package:flutter/material.dart';
import 'package:responsive_test_ui/views/widgets/custom_background_container.dart';
import 'package:responsive_test_ui/views/widgets/my_card_section.dart';
import 'package:responsive_test_ui/views/widgets/transaction_history.dart';


class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(child: Column(children: [

      MyCardSection(),
      Divider(height: 40, color: Colors.blue,),
      TransactionHistory(),
      
    ]));
  }
}
