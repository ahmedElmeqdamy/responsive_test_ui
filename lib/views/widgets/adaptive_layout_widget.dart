import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  final WidgetBuilder mobileLayout, tabletLayout, deskTopLayout;

  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.deskTopLayout,
  });

   
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {

        if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return tabletLayout(context);
        } else if (constraints.maxWidth < 800) {
          return mobileLayout(context);
        } else {
          return deskTopLayout(context);
        }
      },
    );
  }
}
