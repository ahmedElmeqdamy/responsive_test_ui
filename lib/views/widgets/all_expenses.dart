import 'package:flutter/material.dart';
import 'package:responsive_test_ui/views/widgets/all_expenses_header.dart';

import 'all_expenses_item_list_view.dart';
import 'custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 10),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
