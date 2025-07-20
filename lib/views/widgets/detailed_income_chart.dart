import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_test_ui/core/utils/app_style.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,

      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex ==0 ? 1.5: null,
          titleStyle: AppStyles.styleRegular14(
            context,
          ).copyWith(color:activeIndex ==0 ? null: Colors.white),
          title: activeIndex ==0? 'Design service' :  '40%',
          radius: activeIndex == 0 ? 120 : 100,
          color: Color(0xff208CC8),
          value: 40,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset:activeIndex ==1?  1.5 : null,
          titleStyle: AppStyles.styleRegular14(
            context,
          ).copyWith(color:activeIndex == 1 ? null: Colors.white),
          title:  activeIndex ==1?'Design product': '25%',
          radius: activeIndex == 1 ?  120 : 100,
          color: Color(0xff4EB7F2),
          value: 25,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset:activeIndex ==2 ?  1.5 : null,
          titleStyle: AppStyles.styleRegular14(
            context,
          ).copyWith(color: activeIndex==2? null : Colors.white),
          title:  activeIndex ==2?'Product royalti':'20%',
          radius: activeIndex == 2 ?  120 : 100,
          color: Color(0xff064061),
          value: 20,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3? 1.5 :null,
          titleStyle: AppStyles.styleRegular14(
            context,
          ).copyWith(color:activeIndex == 3 ? null : Colors.white),
          title: activeIndex ==3?'Other': '25%',
          radius: activeIndex == 3 ? 120 : 100,
          color: Color(0xffE2DECD),
          value: 25,
        ),
      ],
    );
  }
}
