// MIT License
//
// Copyright (c) 2023 Zaki Mubarok (kakzaki.dev)

import 'package:force_type/force_type.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final integerVal = 123;
    final stringIntegerVal = "123";
    final stringDoubleVal = "123.456";
    final stringBooleanVal = "true";
    final stringBooleanIntegerVal = "1";
    final stringDateTime = "1969-07-20 20:18:04Z";
    final Map<String, dynamic> json = {"value": null};
    final double doubleVal = 123.00;

    test('Force String Test', () {
      expect(integerVal.forceString, "123");
      expect(forceString(integerVal), "123");
    });

    test('Force Integer Test', () {
      expect(stringIntegerVal.forceInteger, 123);
      expect(forceInteger(stringIntegerVal), 123);
    });

    test('Force Double Test', () {
      expect(stringDoubleVal.forceDouble, 123.456);
      expect(forceDouble(stringDoubleVal), 123.456);
    });

    test('Force Boolean Test', () {
      expect(stringBooleanVal.forceBoolean, true);
      expect(stringBooleanIntegerVal.forceBoolean, true);
      expect(stringIntegerVal.forceBoolean, false);
      expect(forceBoolean(stringBooleanVal), true);
      expect(forceBoolean(stringBooleanIntegerVal), true);
    });

    test('Force DateTime Test', () {
      expect(
          stringDateTime.forceDateTime, DateTime.parse("1969-07-20 20:18:04Z"));
      expect(forceDateTime(stringDateTime),
          DateTime.parse("1969-07-20 20:18:04Z"));
    });

    test('Force String Object Test', () {
      expect(forceString(json['value']), "");
    });

    test('Force Double to Integer Test', () {
      expect(doubleVal.forceInteger, 123);
      expect(forceInteger(doubleVal), 123);
    });

    test('Force String Double to Double Test', () {
      expect(stringDoubleVal.forceDouble, 123.456);
      expect(forceDouble(stringDoubleVal), 123.456);
    });
  });
}
