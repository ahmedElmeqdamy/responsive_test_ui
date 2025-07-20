import 'package:flutter/material.dart';
import 'package:responsive_test_ui/models/user_info_model.dart';
import 'package:responsive_test_ui/views/widgets/user_info_list_tile.dart';

import '../../models/drawer_item_model.dart';
import 'active_inActive_item.dart';
import 'drawer_item.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {


  const CustomDrawer({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width *0.7,
      // color: Color.fromRGBO(255, 255, 255, 0.8),
      color: Colors.white.withValues(alpha: 0.8),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: 'assets/images/avatar_3.svg',
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: Container(height: 20)),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting system',
                    image: 'assets/images/settings.svg',
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout account',
                    image: 'assets/images/logout.svg',
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
