import 'package:flutter/material.dart';
import 'package:responsive_test_ui/models/all_expenses_item_model.dart';

import 'all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final items = [
    AllExpensesItemModel(
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
      image: 'assets/images/balance.svg',
    ),
    AllExpensesItemModel(
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
      image: 'assets/images/income.svg',
    ),
    AllExpensesItemModel(
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
      image: 'assets/images/expenses.svg',
    ),
  ];
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[0],
              isSelected: selectedItem == 0,
            ),
          ),
        ),
        SizedBox(width: 5),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[1],
              isSelected: selectedItem == 1,
            ),
          ),
        ),
        SizedBox(width: 5),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[2],
              isSelected: selectedItem == 2,
            ),
          ),
        ),
      ],
    );
    // return Row(
    //   children: items
    //       .map((e) => Expanded(child: AllExpensesItem(allExpensesItemModel: e)))
    //       .toList(),
    // );
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 0 ? 0 : 12.0),
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: AllExpensesItem(
                allExpensesItemModel: item,
                isSelected: selectedItem == index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedItem = index;
    });
  }
}
