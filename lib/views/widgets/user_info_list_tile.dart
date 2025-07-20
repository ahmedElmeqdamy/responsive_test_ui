import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_test_ui/core/utils/app_style.dart';
import 'package:responsive_test_ui/models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel userInfoModel;

  const UserInfoListTile({
    super.key,
  required this.userInfoModel
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xfffafafa),
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(userInfoModel.title, style: AppStyles.styleSemiBold16(context))),
        subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(userInfoModel.subtitle, style: AppStyles.styleRegular12(context))),
      ),
    );
  }
}
