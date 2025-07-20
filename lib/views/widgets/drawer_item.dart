import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_test_ui/core/utils/app_style.dart';
import 'package:responsive_test_ui/models/drawer_item_model.dart';

import 'active_inActive_item.dart';

class DrawerItem extends StatelessWidget {
  final bool isActive;

  final DrawerItemModel drawerItemModel;

  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel,)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}


