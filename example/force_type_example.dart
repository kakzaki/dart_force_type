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
    });

    test('Force Integer Test', () {
      expect(dynamicB.forceInteger, 123);
    });

    test('Force Double Test', () {
      expect(dynamicC.forceDouble, 123.456);
    });

    test('Force Boolean Test', () {
      expect(dynamicD.forceBoolean, true);
      expect(dynamicE.forceBoolean, true);
    });

    test('Force DateTime Test', () {
      expect(dynamicF.forceDateTime, DateTime.parse("1969-07-20 20:18:04Z"));
    });
  });
}
