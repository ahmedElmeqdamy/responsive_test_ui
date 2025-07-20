import 'package:flutter/material.dart';
import 'package:responsive_test_ui/views/widgets/active_and_inactive_all_expenses_item.dart';
import '../../models/all_expenses_item_model.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;

  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration:  Duration(milliseconds: 300),
      firstChild: InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel),
      secondChild: ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel),
      crossFadeState: isSelected ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      firstCurve: Curves.easeIn,
      secondCurve: Curves.easeOut,
      sizeCurve: Curves.easeInOut,
    );
  }
}
