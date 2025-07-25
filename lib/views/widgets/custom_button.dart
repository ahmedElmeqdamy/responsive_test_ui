
import 'package:flutter/material.dart';

import '../../core/utils/app_style.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.textColor, required this.title});

  final Color? backgroundColor, textColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: backgroundColor ?? const Color(0xFF4DB7F2),
        ),
        onPressed: () {},
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
