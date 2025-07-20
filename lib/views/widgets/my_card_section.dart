import 'package:flutter/material.dart';
import 'package:responsive_test_ui/core/utils/app_style.dart';
import 'package:responsive_test_ui/views/widgets/dots_indicator.dart';
import 'package:responsive_test_ui/views/widgets/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {

  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();


    pageController.addListener(() {

      // ast5dmna .round() 3shan scroll ykon asr3 w y2rb l a2rab rakm saheh
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25),
        Text('My card', style: AppStyles.styleSemiBold20(context)),
        SizedBox(height: 20),
        MyCardPageView(pageController: pageController,),
        SizedBox(height: 20),
        DotsIndicator(currentPage: currentPageIndex,),
      ],
    );
  }
}
