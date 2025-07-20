import 'package:flutter/material.dart';
import 'package:responsive_test_ui/views/widgets/adaptive_layout_widget.dart';
import 'package:responsive_test_ui/views/widgets/custom_drawer.dart';
import 'package:responsive_test_ui/views/widgets/dashBoard_desktop_layout.dart';
import 'package:responsive_test_ui/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_test_ui/views/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              leading: IconButton(
                  onPressed: (){

                    _scaffoldKey.currentState!.openDrawer();
                  },

                  icon: Icon(Icons.menu)),
              backgroundColor: Color(0xff56BAF3),
            )
          : null,
      backgroundColor: Color(0xffF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < 800 ? CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => DashboardMobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
        deskTopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
