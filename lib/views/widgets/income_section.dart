import 'package:flutter/material.dart';
import 'package:responsive_test_ui/views/widgets/custom_background_container.dart';
import 'income_section_body.dart';
import 'income_section_header.dart';


class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}




