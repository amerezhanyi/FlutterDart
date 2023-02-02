import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import "../utils/date_time.dart";

class HabitDatabase {
  List todaysHabitList = [];
  Map<DateTime, int> heatMapDataSet = {};
  String startDate = todaysDateFormatted();

  Future<List<dynamic>> loadInitData() async {
    final db = await SharedPreferences.getInstance();
    List<dynamic> habits;
    print(">>> CONTAINS: ${db.containsKey("CURRENT_HABIT_LIST")}");
    if (!db.containsKey("CURRENT_HABIT_LIST")) {
      habits = await _createDefaultData();
      updateDatabase(habits);
    } else {
      habits = await _loadData();
    }
    startDate = db.getString("START_DATE") ?? todaysDateFormatted();
    return habits;
  }

  // create initial default data
  Future<List<dynamic>> _createDefaultData() async {
    final db = await SharedPreferences.getInstance();
    todaysHabitList = [
      ["Run", false],
      ["Read", false],
    ];
    db.setString("START_DATE", todaysDateFormatted());
    return todaysHabitList;
  }

  // load data if it already exists
  Future<List<dynamic>> _loadData() async {
    final db = await SharedPreferences.getInstance();
    if (!db.containsKey(todaysDateFormatted()) &&
        db.containsKey("CURRENT_HABIT_LIST")) {
      final todaysHabitData = db.getString("CURRENT_HABIT_LIST") ?? "[]";
      todaysHabitList = json.decode(todaysHabitData);
      for (int i = 0; i < todaysHabitList.length; i++) {
        todaysHabitList[i][1] = false;
      }
    } else {
      final todaysHabitData = db.getString(todaysDateFormatted()) ?? "[]";
      todaysHabitList = json.decode(todaysHabitData);
    }
    return todaysHabitList;
  }

  // update database
  void updateDatabase(list) async {
    todaysHabitList = list;
    final db = await SharedPreferences.getInstance();

    final todaysHabitData = json.encode(todaysHabitList);
    db.setString(todaysDateFormatted(), todaysHabitData);
    db.setString("CURRENT_HABIT_LIST", todaysHabitData);

    calculateHabitPercentages();
    loadHeatMap();
  }

  void calculateHabitPercentages() async {
    int countCompleted = 0;
    for (int i = 0; i < todaysHabitList.length; i++) {
      if (todaysHabitList[i][1] == true) {
        countCompleted++;
      }
    }

    String percent = todaysHabitList.isEmpty
        ? '0.0'
        : (countCompleted / todaysHabitList.length).toStringAsFixed(1);

    final db = await SharedPreferences.getInstance();
    db.setString("PERCENTAGE_SUMMARY_${todaysDateFormatted()}", percent);
  }

  void loadHeatMap() async {
    final db = await SharedPreferences.getInstance();
    final start = db.getString("START_DATE") ?? todaysDateFormatted();
    DateTime startDate = createDateTimeObject(start);
    int daysInBetween = DateTime.now().difference(startDate).inDays;

    for (int i = 0; i < daysInBetween + 1; i++) {
      String yyyymmdd = convertDateTimeToString(
        startDate.add(Duration(days: i)),
      );

      double strengthAsPercent = double.parse(
        db.getString("PERCENTAGE_SUMMARY_$yyyymmdd") ?? "0.0",
      );

      int year = startDate.add(Duration(days: i)).year;
      int month = startDate.add(Duration(days: i)).month;
      int day = startDate.add(Duration(days: i)).day;

      final percentForEachDay = <DateTime, int>{
        DateTime(year, month, day): (10 * strengthAsPercent).toInt(),
      };

      heatMapDataSet.addEntries(percentForEachDay.entries);
      print(heatMapDataSet);
    }
  }
}
