
import 'package:flutter/material.dart';
import 'package:responsive_test_ui/models/item_detail_model.dart';

import '../../core/utils/app_style.dart';
class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailModel});

  final ItemDetailModel itemDetailModel ;



  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          color: Color(0xff208CC8),
          shape: OvalBorder(),
        ),
      ),
      title: Text(itemDetailModel.title, style: AppStyles.styleRegular12(context)),

      trailing: Text(itemDetailModel.value, style: AppStyles.styleRegular12(context)),
    );
  }
}