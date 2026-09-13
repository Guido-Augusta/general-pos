import 'package:general_pos/core/env/env.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});

  test("load correct base url", () {
    expect(Env.baseUrl, "https://your-endpoint.com/");
  });
}
