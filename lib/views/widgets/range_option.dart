import 'package:flutter/material.dart';

import '../../core/utils/app_style.dart';
class RangeOption extends StatelessWidget {
  const RangeOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xfff1f1f1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
          children: [
            Text('Monthly', style: AppStyles.styleMedium16(context)),
            SizedBox(width: 20,),
            Transform.rotate(angle:- 1.57079633,
            child: Icon(Icons.arrow_back_ios_new_outlined)),
          ]),
    );
  }
}