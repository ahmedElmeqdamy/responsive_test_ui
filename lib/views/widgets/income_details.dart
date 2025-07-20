import 'package:flutter/material.dart';
import 'package:responsive_test_ui/views/widgets/item_details.dart';

import '../../models/item_detail_model.dart';

class IncomeDetails extends StatelessWidget {
  static const items = [
    ItemDetailModel(
      title: 'Design service',
      value: '40%',
      color: Color(0xff208CC8),
    ),
    ItemDetailModel(
      title: 'Design product',
      value: '25%',
      color: Color(0xff4EB7F2),
    ),
    ItemDetailModel(
      title: 'Product royalti',
      value: '20%',
      color: Color(0xff064061),
    ),
    ItemDetailModel(title: 'Other', value: '22%', color: Color(0xffE2DECD)),
  ];

  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((value) {
        return ItemDetails(itemDetailModel: value);
      }).toList(),
    );
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemDetails(itemDetailModel: items[index]);
      },
    );
  }
}
