import 'package:flutter/material.dart';
import 'package:responsive_test_ui/views/widgets/user_info_list_tile.dart';

import '../../models/user_info_model.dart';

class LatestTransactionListView extends StatelessWidget {
  static const items = [
    UserInfoModel(
      image: 'assets/images/avatar_1.svg',
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: 'assets/images/avatar_2.svg',
      title: 'Josua Nunito',
      subtitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      image: 'assets/images/avatar_3.svg',
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
  ];

  const LatestTransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (element) => IntrinsicWidth(
                child: UserInfoListTile(userInfoModel: element),
              ),
            )
            .toList(),
      ),
    );

    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(userInfoModel: items[index]),
          );
        },
      ),
    );
  }
}
