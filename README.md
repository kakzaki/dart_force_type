## Force Type

A Dart package that provides functions to forcefully convert dynamic types to specific types.

[![pub package](https://img.shields.io/pub/v/force_type.svg)](https://pub.dev/packages/force_type)
[![pub package](https://img.shields.io/twitter/follow/kakzaki_id.svg?colorA=1da1f2&colorB=&label=Follow%20on%20Twitter)](https://twitter.com/kakzaki_id)


## Installation

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  force_type: any
```

## Usage

Import the `force_type` package and the `test` package:

```dart
import 'package:force_type/force_type.dart';
import 'package:test/test.dart';
```

Create a group of tests using the `group` function from the `test` package:

```dart
void main() {
  group('A group of tests', () {
    // Define dynamic variables for testing
    final dynamicA = 123;
    final dynamicB = "123";
    final dynamicC = "123.456";
    final dynamicD = "true";
    final dynamicE = "1";
    final dynamicF = "1969-07-20 20:18:04Z";

    // Write individual test cases
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
      expect(
          dynamicF.forceDateTime, DateTime.parse("1969-07-20 20:18:04Z"));
    });
  });
}
```

## API Reference

### forceString

Converts a dynamic value to a String.

```dart
dynamicValue.forceString
```

### forceInteger

Converts a dynamic value to an integer.

```dart
dynamicValue.forceInteger
```

### forceDouble

Converts a dynamic value to a double.

```dart
dynamicValue.forceDouble
```

### forceBoolean

Converts a dynamic value to a boolean.

```dart
dynamicValue.forceBoolean
```

### forceDateTime

Converts a dynamic value to a DateTime object.

```dart
dynamicValue.forceDateTime
```

That's it! You can now use the `force_type` package to forcefully convert dynamic types to specific types in your Flutter project.

I hope this documentation helps! Let me know if you need any further assistance.


