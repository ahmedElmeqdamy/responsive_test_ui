import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int selectedIndex = 0;
  final List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: 'assets/images/dashboard.svg'),
    DrawerItemModel(
      title: 'My Transaction',
      image: 'assets/images/my_transctions.svg',
    ),
    DrawerItemModel(title: 'Statistics', image: 'assets/images/statistics.svg'),
    DrawerItemModel(
      title: 'Wallet Account',
      image: 'assets/images/wallet_account.svg',
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: 'assets/images/my_investments.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(

      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != index) {
                selectedIndex = index;
                setState(() {});
                print(selectedIndex);
              }
            },
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: selectedIndex == index,
            ),
          ),
        );
      },
      itemCount: items.length,
    );
  }
}
