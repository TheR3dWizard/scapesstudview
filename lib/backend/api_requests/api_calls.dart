import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Timetable Group Code

class TimetableGroup {
  static String baseUrl = 'https://psg-scapes-backend.onrender.com/api/';
  static Map<String, String> headers = {
    'User-Agent': 'Flutterflow',
  };
  static MondayCall mondayCall = MondayCall();
  static MondayCopyCall mondayCopyCall = MondayCopyCall();
  static TuesdayCall tuesdayCall = TuesdayCall();
}

class MondayCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Monday',
      apiUrl:
          '${TimetableGroup.baseUrl}timetable-single-day-class/Monday/22Z22',
      callType: ApiCallType.GET,
      headers: {
        ...TimetableGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic firstclass(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].1.roomCode''',
      );
  dynamic secondclass(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].2.roomCode''',
      );
  dynamic thirdclass(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].3.roomCode''',
      );
  dynamic fourthclass(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].4.roomCode''',
      );
  dynamic fifthclass(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].5.roomCode''',
      );
  dynamic sixthclass(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].6.roomCode''',
      );
  dynamic seventhclass(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].7.roomCode''',
      );
  dynamic eighthclass(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].8.roomCode''',
      );
  dynamic oneclassname(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].1.classCode''',
      );
  dynamic twoclassname(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].2.classCode''',
      );
  dynamic threeclassname(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].3.classCode''',
      );
  dynamic fourclassname(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].4.classCode''',
      );
  dynamic fiveclassname(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].5.classCode''',
      );
  dynamic sixclassname(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].6.classCode''',
      );
  dynamic sevenclassname(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].7.classCode''',
      );
  dynamic eightclassname(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].8.classCode''',
      );
}

class MondayCopyCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Monday Copy',
      apiUrl:
          '${TimetableGroup.baseUrl}timetable-single-day-class/Monday/22Z22',
      callType: ApiCallType.GET,
      headers: {
        ...TimetableGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic firstclass(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].1''',
        true,
      );
  dynamic secondclass(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].2''',
      );
  dynamic thirdclass(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].3''',
      );
  dynamic fourthclass(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].4''',
      );
  dynamic fifthclass(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].5''',
      );
  dynamic sixthclass(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].6''',
      );
  dynamic seventhclass(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].7''',
      );
  dynamic eighthclass(dynamic response) => getJsonField(
        response,
        r'''$.classData[0].8''',
      );
}

class TuesdayCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Tuesday',
      apiUrl:
          '${TimetableGroup.baseUrl}timetable-single-day-class/Tuesday/22Z22',
      callType: ApiCallType.GET,
      headers: {
        ...TimetableGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic firstclass(dynamic response) => getJsonField(
        response,
        r'''$[0].1.subject''',
        true,
      );
  dynamic secondclass(dynamic response) => getJsonField(
        response,
        r'''$[0].2.subject''',
      );
  dynamic thirdclass(dynamic response) => getJsonField(
        response,
        r'''$[0].3.subject''',
      );
}

/// End Timetable Group Code

/// Start AttendanceData Group Code

class AttendanceDataGroup {
  static String baseUrl = 'https://psg-scapes-backend.onrender.com/api';
  static Map<String, String> headers = {};
  static StudAttACCall studAttACCall = StudAttACCall();
  static StudAttSCCall studAttSCCall = StudAttSCCall();
  static CourseCall courseCall = CourseCall();
}

class StudAttACCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'StudAttAC',
      apiUrl: '${AttendanceDataGroup.baseUrl}/attendance-single-student/22Z201',
      callType: ApiCallType.GET,
      headers: {
        ...AttendanceDataGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic present(dynamic response) => getJsonField(
        response,
        r'''$[0].totalPresent''',
      );
  dynamic noClasses(dynamic response) => getJsonField(
        response,
        r'''$[0].totalClasses''',
      );
  dynamic className(dynamic response) => getJsonField(
        response,
        r'''$[0].courseName''',
      );
}

class StudAttSCCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'StudAttSC',
      apiUrl: '${AttendanceDataGroup.baseUrl}/19Z101/22Z209',
      callType: ApiCallType.GET,
      headers: {
        ...AttendanceDataGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CourseCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Course',
      apiUrl: '${AttendanceDataGroup.baseUrl}/19Z101',
      callType: ApiCallType.GET,
      headers: {
        ...AttendanceDataGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End AttendanceData Group Code

/// Start New API Group Code

class NewAPIGroup {
  static String baseUrl = 'https://psg-scapes-backend.onrender.com/api/';
  static Map<String, String> headers = {};
  static TimetableCall timetableCall = TimetableCall();
  static AttendanceCall attendanceCall = AttendanceCall();
  static UserinfoCall userinfoCall = UserinfoCall();
}

class TimetableCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'timetable',
      apiUrl: '${NewAPIGroup.baseUrl}timetable/comparison/week/22Z2',
      callType: ApiCallType.GET,
      headers: {
        ...NewAPIGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic classes(dynamic response) => getJsonField(
        response,
        r'''$[0].periods''',
        true,
      );
}

class AttendanceCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'attendance',
      apiUrl: '${NewAPIGroup.baseUrl}attendance/student/22Z201',
      callType: ApiCallType.GET,
      headers: {
        ...NewAPIGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic numPresent(dynamic response) => getJsonField(
        response,
        r'''$[0].totalPresent''',
      );
  dynamic numClasses(dynamic response) => getJsonField(
        response,
        r'''$[0].totalClasses''',
      );
}

class UserinfoCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Userinfo',
      apiUrl: '${NewAPIGroup.baseUrl}userInfo/22Z201',
      callType: ApiCallType.GET,
      headers: {
        ...NewAPIGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End New API Group Code

class TimetableapiCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'timetableapi',
      apiUrl: 'https://psg-scapes-backend.onrender.com/api/v1/c22z2/timetable',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic monday(dynamic response) => getJsonField(
        response,
        r'''$[0].monday[0]''',
        true,
      );
}

class UserDataCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'User Data',
      apiUrl:
          'https://psg-scapes-backend.onrender.com/api//students-user-details/22Z201',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic rollno(dynamic response) => getJsonField(
        response,
        r'''$._id''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
  static dynamic dept(dynamic response) => getJsonField(
        response,
        r'''$.department''',
      );
  static dynamic role(dynamic response) => getJsonField(
        response,
        r'''$.role''',
      );
  static dynamic classkey(dynamic response) => getJsonField(
        response,
        r'''$.classKey''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
