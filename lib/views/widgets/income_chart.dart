import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IncomeChartState createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          setState(() {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
            value: 40.0,
            color: const Color(0xff208CC8),
            showTitle: false,
            radius: activeIndex == 0 ? 60 : 50),
        PieChartSectionData(
            value: 25.0,
            color: const Color(0xff4EB7F2),
            showTitle: false,
            radius: activeIndex == 1 ? 60 : 50),
        PieChartSectionData(
            value: 22.0,
            color: const Color(0xffE2DECD),
            showTitle: false,
            radius: activeIndex == 2 ? 60 : 50),
        PieChartSectionData(
            value: 20.0,
            color: const Color(0xff064061),
            showTitle: false,
            radius: activeIndex == 3 ? 60 : 50)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PieChart(getPieChartData());
  }
}
