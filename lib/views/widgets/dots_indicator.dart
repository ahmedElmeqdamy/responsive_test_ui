import 'package:flutter/material.dart';
import 'package:responsive_test_ui/views/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {


  const DotsIndicator({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: CustomDotIndicator(isActive: index  == currentPage ),
        );
      }),
    );
  }
}
