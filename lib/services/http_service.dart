// ignore_for_file: constant_identifier_names, non_constant_identifier_names, avoid_print

import 'dart:convert';
import "package:http/http.dart" as http;
import 'dart:async';

class RequestResult {
  bool ok;
  dynamic data;
  RequestResult(this.ok, this.data);

  void then(Null Function(dynamic response) param0) {}
}

const PROTOCOL = "http";
const DOMAIN = "34.71.175.122";

Future<RequestResult> http_post(
    String route, String token, dynamic data) async {
  var url = Uri.parse("$PROTOCOL://$DOMAIN/$route");
  print(url);
  var datastr = jsonEncode(data);

  print(" Data Str $datastr");

  http.Response result = await http.post(url, body: datastr, headers: {
    "Content-Type": "application/json",
    'Authorization': token,
  });

  if (result.statusCode == 200) {
    return RequestResult(true, json.decode(result.body));
  } else {
    return RequestResult(false, json.decode(result.body));
  }
}

Future<RequestResult> http_get(String route) async {
  var url = Uri.parse("$PROTOCOL://$DOMAIN/$route");
  print(url);

  final result = await http.get(url);

  if (result.statusCode == 200) {
    return RequestResult(true, json.decode(result.body));
  } else {
    return RequestResult(false, json.decode(result.body));
  }
}
