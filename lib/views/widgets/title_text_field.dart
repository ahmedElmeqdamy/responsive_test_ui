import 'package:flutter/material.dart';
import 'package:responsive_test_ui/core/utils/app_style.dart';

import 'custom_text_feild2.dart';

class TitleTextField extends StatelessWidget {
  final String title, hint;

  const TitleTextField({super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Color(0xff447089)),
        ),
        SizedBox(height: 12),
        CustomTextField2(hint: hint),
      ],
    );
  }
}
