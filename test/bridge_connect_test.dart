import 'dart:developer';

import 'package:bridge_connect/bridge_connect.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('get api test', () {
    //TODO:Write test cases for get api call
  });
  test('post api test', () async {
    var api = "https://countriesnow.space/api/v0.1/countries";
    var data = await BridgeConnect.getAPICall(api: api);
    log("___data in get api call$data");
  });
}
