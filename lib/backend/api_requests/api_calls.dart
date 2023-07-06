import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';
//Data should be taken from an API
String clsKey = "22Z2";
String rollNo = "22Z201";
String day = DateFormat('EEEE').format(DateTime.now());

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
      apiUrl: '${NewAPIGroup.baseUrl}timetable/comparison/week/$clsKey',
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
      apiUrl: '${NewAPIGroup.baseUrl}attendance/student/$rollNo',
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
      apiUrl: '${NewAPIGroup.baseUrl}userInfo/$rollNo',
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

  dynamic rollno(dynamic response) => getJsonField(
        response,
        r'''$._id''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
  dynamic dept(dynamic response) => getJsonField(
        response,
        r'''$.department''',
      );
  dynamic role(dynamic response) => getJsonField(
        response,
        r'''$.role''',
      );
  dynamic clskey(dynamic response) => getJsonField(
        response,
        r'''$.classKey''',
      );
}

/// End New API Group Code

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
