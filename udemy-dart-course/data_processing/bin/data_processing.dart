import 'dart:io';

import 'package:data_processing/data_processing.dart' as data_processing;

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dart totals.dart <inputFile.csv>');
    exit(1);
  }
  final inputFile = arguments.first;
  final lines = File(inputFile).readAsLinesSync();
  print("-------------------");
  print("FILE: $inputFile");
  print("-------------------");
  final totalDuration = data_processing.calculate(lines);
  print("-------------------");
  print('Total for all tags: ${totalDuration.toStringAsFixed(1)}h');
}
