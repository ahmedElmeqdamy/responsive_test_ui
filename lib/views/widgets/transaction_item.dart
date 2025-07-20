import 'package:flutter/material.dart';
import 'package:responsive_test_ui/core/utils/app_style.dart';
import 'package:responsive_test_ui/views/widgets/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transactionModel;

  const TransactionItem({super.key, required this.transactionModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transactionModel.title,

        ),
        subtitle: Text(
          transactionModel.subTitle,
          style: AppStyles.styleRegular14(context),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold18(context).copyWith(
            color: transactionModel.withdrawal
                ? Color(0xff7DD97B)
                : Color(0xffF3735E),
          ),
        ),
      ),
    );
  }
}
