import 'package:flutter/material.dart';
import 'package:responsive_test_ui/views/widgets/transaction_item.dart';
import 'package:responsive_test_ui/views/widgets/transaction_model.dart';

class TransactionItemListView extends StatelessWidget {
  const TransactionItemListView({super.key});

  static const items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      subTitle: '13 Apr, 2022 ',
      amount: r'$20,129',
      withdrawal: false,
    ),
    TransactionModel(
      title: 'Landing Page project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      withdrawal: true,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,129',
      withdrawal: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((value) {
        return TransactionItem(transactionModel: value);
      }).toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return TransactionItem(transactionModel: items[index]);
    //   },
    //   itemCount: items.length,
    // );
  }
}
