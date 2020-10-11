import '../../../shared/utils/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeeklyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart(
        BarChartData(
          barGroups: getBarGroups(color: colorScheme.secondary, disabledColor: colorScheme.onPrimary.withOpacity(0.5)),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            leftTitles: SideTitles(
              showTitles: false,
            ),
            bottomTitles: SideTitles(
              showTitles: true,
              getTitles: getWeek,
              textStyle: TextStyle(
                color: colorScheme.onPrimary,
                fontSize: 10,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

getBarGroups({Color color, Color disabledColor}) {
  List<double> barChartDatas = [6, 10, 8, 7, 10, 15, 9];
  List<BarChartGroupData> barChartGroups = [];
  barChartDatas.asMap().forEach(
        (i, value) => barChartGroups.add(
          BarChartGroupData(
            x: i,
            barRods: [
              BarChartRodData(
                y: value,
                //This is not the proper way, this is just for demo
                color: i == 4 ? color : disabledColor,
                width: 16,
              )
            ],
          ),
        ),
      );
  return barChartGroups;
}

String getWeek(double value) {
  switch (value.toInt()) {
    case 0:
      return 'SEG';
    case 1:
      return 'TER';
    case 2:
      return 'QUA';
    case 3:
      return 'QUI';
    case 4:
      return 'SEX';
    case 5:
      return 'SÁB';
    case 6:
      return 'DOM';
    default:
      return '';
  }
}
