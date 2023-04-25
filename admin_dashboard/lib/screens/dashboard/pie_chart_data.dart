import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../constants.dart';

final pieChartSectionData = [
  PieChartSectionData(
    color: primaryColor,
    value: 35,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: Colors.red,
    value: 20,
    showTitle: false,
    radius: 22,
  ),
  PieChartSectionData(
    color: primaryColor.withOpacity(0.1),
    value: 45,
    showTitle: false,
    radius: 19,
  ),
];
