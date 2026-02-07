import 'package:WinWin/core/services/api/api_helper.dart';

class Failure {
  int statuscode;
  String errormsg;

  Failure({required this.statuscode, required this.errormsg});

  factory Failure.fromJson(Map<String, dynamic> json) {
    return Failure(
      statuscode: json[ApiKeys.status],
      errormsg: json[ApiKeys.ErrorMessage],
    );
  }
}
