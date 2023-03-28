import 'dart:developer';

import 'package:bridge_connect/bridge_connect.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('get api test', () {
    // final calculator = Calculator();
    // expect(calculator.addOne(2), 3);
    // expect(calculator.addOne(-7), -6);
    // expect(calculator.addOne(0), 1);
  });
  test('post api test', () async {
    var api = "https://countriesnow.space/api/v0.1/countries";
    var data = await BridgeConnect.getAPICall(api: api);
    log("___data in get api call$data");
  });
}
