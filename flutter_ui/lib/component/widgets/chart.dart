import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/themes/app_color.dart';

// ignore: must_be_immutable
class Chair extends StatelessWidget {
   Chair({
    Key? key,
  }) : super(key: key);

  List<PieChartSectionData> pairChartSelectionData = [
      PieChartSectionData(
        value: 25,
        color: AppColor.kPrimary,
        showTitle: false,
        radius: 25,
      ),
      PieChartSectionData(
        value: 20,
        color: AppColor.pieChartBlue,
        showTitle: false,
        radius: 22,
      ),
      PieChartSectionData(
        value: 10,
        color: AppColor.pieChartYellow,
        showTitle: false,
        radius: 19,
      ),
      PieChartSectionData(
        value: 15,
        color: AppColor.pieChartRed,
        showTitle: false,
        radius: 16,
      ),
      PieChartSectionData(
        value: 25,
        color: AppColor.kPrimary.withOpacity(.1),
        showTitle: false,
        radius: 13,
      ),
    ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: Stack(
          children: [
            PieChart(
              PieChartData(
                centerSpaceRadius: 70,
                sectionsSpace: 0,
                startDegreeOffset: -90,
                sections: pairChartSelectionData,
              ),
            ),
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height : defaultPadding),
                  Text(
                    "29.1",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.white,fontWeight: FontWeight.w600,height: 0.5),
                  ),
                  const Text("of 128GB")
                ],
              ),
            ),
          ],
        ));
  }
}
