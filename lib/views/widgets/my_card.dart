import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_test_ui/core/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/card_background.png'),
          ),
          color: Color(0xff5DBDF3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 10, right: 12, top: 5),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),

              title: Text(
                'Name card',
                style: AppStyles.styleRegular16(
                  context,
                ).copyWith(color: Colors.white),
              ),
              trailing: SvgPicture.asset('assets/images/gallery.svg'),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding:  EdgeInsets.only(right: 48-28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('0918 8124 0042 8129' , style: AppStyles.styleSemiBold20(context).copyWith(color: Colors.white),),

                  Text('12/20 - 124 ' ,style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),),
                ],
              ),
            ),
            Flexible(child: SizedBox(height: 54- 24,)),
          ],
        ),
      ),
    );
  }
}
