import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _dayofweek = 'Monday';
  String get dayofweek => _dayofweek;
  set dayofweek(String _value) {
    _dayofweek = _value;
  }

  List<String> _courses = [
    'Math',
    'Physics',
    'Chemistry',
    'Digital Design',
    'Digital Design Lab',
    'English',
    'Engineering Graphics'
  ];
  List<String> get courses => _courses;
  set courses(List<String> _value) {
    _courses = _value;
  }

  void addToCourses(String _value) {
    _courses.add(_value);
  }

  void removeFromCourses(String _value) {
    _courses.remove(_value);
  }

  void removeAtIndexFromCourses(int _index) {
    _courses.removeAt(_index);
  }

  DateTime? _day = DateTime.fromMillisecondsSinceEpoch(1682600280000);
  DateTime? get day => _day;
  set day(DateTime? _value) {
    _day = _value;
  }

  List<String> _Attendance = [
    '[19Z101,25,20]',
    '[19Z102, 25, 18]',
    '[19Z103, 25, 21]',
    '[19Z104, 25, 17]',
    '[19Z107, 30, 28]',
    '[19Z108, 30, 26]'
  ];
  List<String> get Attendance => _Attendance;
  set Attendance(List<String> _value) {
    _Attendance = _value;
  }

  void addToAttendance(String _value) {
    _Attendance.add(_value);
  }

  void removeFromAttendance(String _value) {
    _Attendance.remove(_value);
  }

  void removeAtIndexFromAttendance(int _index) {
    _Attendance.removeAt(_index);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
