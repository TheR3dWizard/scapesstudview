import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;
import 'package:http/http.dart' as http;
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

void timetableapi() async {
  List<dynamic> classcodeandroomcode = [];
  List<dynamic> classcodeandroomcode1 = [];
  var client = http.Client;
  var url = Uri.parse(
      "https://psg-scapes-backend.onrender.com/api//timetable-single-day-class/Monday/22Z22");
  var response = await http.get(url);
  var details = json.decode(response.body);
  print(details);
  for (int i = 1; i <= 8; i++) {
    var data1 = details["classData"][0]["$i"]["classCode"];
    var data2 = details["classData"][0]["$i"]["roomCode"];
    classcodeandroomcode.add([data1, data2]);
  }
}

void attendenceapi() async {
  List<dynamic> classdetails = [];
  var url = Uri.parse(
      "https://psg-scapes-backend.onrender.com/api/attendance-single-student/22Z201");
  var response = await http.get(url);
  var data = json.decode(response.body);
  for (int i = 0; i < 7; i++) {
    var coursecode = data[i]["courseCode"];
    var totalclass = data[i]["totalClasses"];
    var totalpresent = data[i]["totalPresent"];
    classdetails.add([coursecode, totalclass, totalpresent]);
  }
}

void loginapi() async {
  Map<String, String> datas = {
    "user-agent": "22z201",
    "rollno": "22z201",
    "tutorcode": "1134",
    "password": "abinav@123"
  };
  var url = Uri.parse("https://psg-scapes-backend.onrender.com/api/auth/login");
  var response = await http.get(url, headers: datas);
  var details = json.decode(response.body);
}
