import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_style.dart';
import '../../models/drawer_item_model.dart';
class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleRegular12(context),
      ),
      leading: SvgPicture.asset(drawerItemModel.image),
    );
  }
}
class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleRegular16(context).copyWith(color: Colors.blue),
      ),
      leading: SvgPicture.asset(drawerItemModel.image),
      trailing: Container(width: 3.7, color: Colors.blue,),
    );
  }
}