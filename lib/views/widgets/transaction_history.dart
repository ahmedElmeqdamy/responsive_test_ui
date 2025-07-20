import 'package:flutter/material.dart';
import 'package:responsive_test_ui/core/utils/app_style.dart';
import 'package:responsive_test_ui/views/widgets/transaction_history_header.dart';

import 'package:responsive_test_ui/views/widgets/transaction_item_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        Text('13 April 2022' ,style: AppStyles.styleRegular12(context), ),
        TransactionItemListView(),
      ],
    );
  }
}


