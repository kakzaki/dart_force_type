// MIT License
//
// Copyright (c) 2023 Zaki Mubarok (kakzaki.dev)

import 'package:force_type/force_type.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final dynamicA = 123;
    final dynamicB = "123";
    final dynamicC = "123.456";
    final dynamicD = "true";
    final dynamicE = "1";
    final dynamicF = "1969-07-20 20:18:04Z";

    test('Force String Test', () {
      expect(dynamicA.forceString, "123");
      //or
      expect(forceString(dynamicA), "123");
    });

    test('Force Integer Test', () {
      expect(dynamicB.forceInteger, 123);
      //or
      expect(forceInteger(dynamicB), 123);
    });

    test('Force Double Test', () {
      expect(dynamicC.forceDouble, 123.456);
      //or
      expect(forceDouble(dynamicC), 123.456);
    });

    test('Force Boolean Test', () {
      expect(dynamicD.forceBoolean, true);
      expect(dynamicE.forceBoolean, true);
      expect(dynamicB.forceBoolean, false);
      //or
      expect(forceBoolean(dynamicD), true);
      expect(forceBoolean(dynamicE), true);
    });

    test('Force DateTime Test', () {
      expect(dynamicF.forceDateTime, DateTime.parse("1969-07-20 20:18:04Z"));
      //or
      expect(forceDateTime(dynamicF), DateTime.parse("1969-07-20 20:18:04Z"));
    });
  });
}
