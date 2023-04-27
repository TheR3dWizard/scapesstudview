import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

int? noofclasses() {
  return 8;
}

String? dailyTimetable(
  DateTimeRange? time,
  String? day,
) {
  return 'Course Code';
}

String? uUIDList() {
  return "some stuff";
}

String? timings(int num) {
  List<String> Timings = [
    "8:30 AM",
    "9:20 AM",
    "10:30 AM",
    "11:20 AM",
    "1:40 PM",
    "2:30 PM",
    "3:30 PM",
    "4:20 PM",
    "5:10 PM"
  ];
  return Timings[num - 1];
}
