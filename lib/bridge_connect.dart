library bridge_connect;

import 'dart:convert';

import 'package:http/http.dart';

class BridgeConnect {
  static Future<Map<String, dynamic>> postAPICall(
      {required String api,
      required Map<String, String> body,
      Map<String, String>? headersList}) async {
    var url = Uri.parse(api);
    var req = Request('POST', url);
    req.headers.addAll(headersList ?? {'Accept': '*/*'});
    req.body = jsonEncode(body);
    var res = await req.send();
    final resBody = await res.stream.bytesToString();
    var json = jsonDecode(resBody);
    if (res.statusCode >= 200 && res.statusCode < 300) {
      return json;
    } else {
      return json;
    }
  }

  static Future<Map<String, dynamic>> getAPICall(
      {required String api, Map<String, String>? headersList}) async {
    var url = Uri.parse(api);
    var req = Request('GET', url);
    req.headers.addAll(headersList ?? {'Accept': '*/*'});
    var res = await req.send();
    final resBody = await res.stream.bytesToString();
    var json = jsonDecode(resBody);
    if (res.statusCode >= 200 && res.statusCode < 300) {
      return json;
    } else {
      return json;
    }
  }
}
