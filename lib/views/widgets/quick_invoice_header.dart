import 'package:flutter/material.dart';

import '../../core/utils/app_style.dart';
class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20(context)),
        Spacer(),
        Container(
          height: 48,
          width: 48,
          decoration: ShapeDecoration(shape: OvalBorder(), ),
          child: Icon(Icons.add , color: Color(0xff4eb7f2),),
        ),
      ],
    );
  }
}