import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_test_ui/views/widgets/my_card.dart';

class MyCardPageView extends StatelessWidget {
  final PageController pageController ;
   const MyCardPageView({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (index) {
        return MyCard();
      }),
    );
  }
}
