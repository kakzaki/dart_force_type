// MIT License
//
// Copyright (c) 2023 Zaki Mubarok (kakzaki.dev)

extension NullableObjectCasting on Object? {
  /// forcing Object? type to String
  String get forceString => "${this ?? ""}";

  /// forcing Object? type to Integer
  int get forceInteger => int.tryParse("${this ?? "0"}") ?? 0;

  /// forcing Object? type to DateTime
  DateTime get forceDateTime =>
      DateTime.tryParse("${this ?? DateTime.now()}") ?? DateTime.now();

  /// forcing Object? type to Double
  double get forceDouble => double.tryParse("${this ?? "0"}") ?? 0;

  /// forcing Object? type to Boolean
  bool get forceBoolean =>
      "${this ?? ""}" == '1' || ("${this ?? ""}").toLowerCase() == 'true'
          ? true
          : false;
}

extension StringCasting on String {
  /// forcing String type to String
  String get forceString => this;

  /// forcing String type to Integer
  int get forceInteger => int.tryParse(this) ?? 0;

  /// forcing String type to DateTime
  DateTime get forceDateTime => DateTime.tryParse(this) ?? DateTime.now();

  /// forcing String type to Double
  double get forceDouble => double.tryParse((this)) ?? 0;

  /// forcing String type to Boolean
  bool get forceBoolean =>
      (this) == '1' || (this).toLowerCase() == 'true' ? true : false;
}

extension NullableStringCasting on String? {
  /// forcing String? type to String
  String get forceString => this ?? "";

  /// forcing String? type to Integer
  int get forceInteger => int.tryParse((this ?? "0")) ?? 0;

  /// forcing String? type to DateTime
  DateTime get forceDateTime =>
      DateTime.tryParse("${this ?? DateTime.now()}") ?? DateTime.now();

  /// forcing String? type to Double
  double get forceDouble => double.tryParse((this ?? "0")) ?? 0;

  /// forcing String? type to Boolean
  bool get forceBoolean =>
      (this ?? "") == '1' || (this ?? "").toLowerCase() == 'true'
          ? true
          : false;
}

extension IntegerCasting on int {
  /// forcing Integer type to String
  String get forceString => "$this";

  /// forcing Integer type to Integer
  int get forceInteger => this;

  /// forcing Integer type to DateTime
  DateTime get forceDateTime => DateTime.tryParse("$this") ?? DateTime.now();

  /// forcing Integer type to Double
  double get forceDouble => double.tryParse("$this") ?? 0;

  /// forcing Integer type to Boolean
  bool get forceBoolean =>
      "$this" == '1' || "$this".toLowerCase() == 'true' ? true : false;
}

extension NullableIntegerCasting on int? {
  /// forcing NullableInteger type to String
  String get forceString => "${this ?? ""}";

  /// forcing NullableInteger type to Integer
  int get forceInteger => this ?? 0;

  /// forcing NullableInteger type to DateTime
  DateTime get forceDateTime =>
      DateTime.tryParse("${this ?? DateTime.now()}") ?? DateTime.now();

  /// forcing NullableInteger type to Double
  double get forceDouble => double.tryParse("${this ?? "0"}") ?? 0;

  /// forcing NullableInteger type to Boolean
  bool get forceBoolean =>
      "${this ?? ""}" == '1' || "${this ?? ""}".toLowerCase() == 'true'
          ? true
          : false;
}

extension DoubleCasting on double {
  /// forcing Double type to String
  String get forceString => "$this";

  /// forcing Double type to Integer
  int get forceInteger => toInt();

  /// forcing Double type to DateTime
  DateTime get forceDateTime => DateTime.tryParse("$this") ?? DateTime.now();

  /// forcing Double type to Double
  double get forceDouble => double.tryParse("$this") ?? 0;

  /// forcing Double type to Boolean
  bool get forceBoolean =>
      "$this" == '1' || "$this".toLowerCase() == 'true' ? true : false;
}

extension NullableDoubleCasting on double? {
  /// forcing NullableDouble type to String
  String get forceString => "${this ?? ""}";

  /// forcing NullableDouble type to Integer
  int get forceInteger => this?.toInt() ?? 0;

  /// forcing NullableDouble type to DateTime
  DateTime get forceDateTime =>
      DateTime.tryParse("${this ?? DateTime.now()}") ?? DateTime.now();

  /// forcing NullableDouble type to Double
  double get forceDouble => double.tryParse("${this ?? "0"}") ?? 0;

  /// forcing NullableDouble type to Boolean
  bool get forceBoolean =>
      "${this ?? ""}" == '1' || "${this ?? ""}".toLowerCase() == 'true'
          ? true
          : false;
}

extension BooleanCasting on bool {
  /// forcing Boolean type to String
  String get forceString => "$this";

  /// forcing Boolean type to Integer
  int get forceInteger => int.tryParse("$this") ?? 0;

  /// forcing Boolean type to DateTime
  DateTime get forceDateTime => DateTime.tryParse("$this") ?? DateTime.now();

  /// forcing Boolean type to Double
  double get forceDouble => double.tryParse("$this") ?? 0;

  /// forcing Boolean type to Boolean
  bool get forceBoolean =>
      "$this" == '1' || "$this".toLowerCase() == 'true' ? true : false;
}

extension NullableBooleanCasting on bool? {
  /// forcing NullableBoolean type to String
  String get forceString => "${this ?? ""}";

  /// forcing NullableBoolean type to Integer
  int get forceInteger => int.tryParse("${this ?? "0"}") ?? 0;

  /// forcing NullableBoolean type to DateTime
  DateTime get forceDateTime =>
      DateTime.tryParse("${this ?? DateTime.now()}") ?? DateTime.now();

  /// forcing NullableBoolean type to Double
  double get forceDouble => double.tryParse("${this ?? "0"}") ?? 0;

  /// forcing NullableBoolean type to Boolean
  bool get forceBoolean =>
      "${this ?? ""}" == '1' || "${this ?? ""}".toLowerCase() == 'true'
          ? true
          : false;
}

extension DateTimeCasting on DateTime {
  /// forcing DateTime type to String
  String get forceString => "$this";

  /// forcing DateTime type to Integer
  int get forceInteger => int.tryParse("$this") ?? 0;

  /// forcing DateTime type to DateTime
  DateTime get forceDateTime => DateTime.tryParse("$this") ?? DateTime.now();

  /// forcing DateTime type to Double
  double get forceDouble => double.tryParse("$this") ?? 0;

  /// forcing DateTime type to Boolean
  bool get forceBoolean =>
      "$this" == '1' || "$this".toLowerCase() == 'true' ? true : false;
}

extension NullableDateTimeCasting on DateTime? {
  /// forcing NullableDateTime type to String
  String get forceString => "${this ?? ""}";

  /// forcing NullableDateTime type to Integer
  int get forceInteger => int.tryParse("${this ?? "0"}") ?? 0;

  /// forcing NullableDateTime to DateTime
  DateTime get forceDateTime =>
      DateTime.tryParse("${this ?? DateTime.now()}") ?? DateTime.now();

  /// forcing NullableDateTime type to Double
  double get forceDouble => double.tryParse("${this ?? "0"}") ?? 0;

  /// forcing NullableDateTime type to Boolean
  bool get forceBoolean =>
      "${this ?? ""}" == '1' || "${this ?? ""}".toLowerCase() == 'true'
          ? true
          : false;
}

/// forcing dynamic type to String
String forceString(var value) => "${value ?? ""}";

/// forcing dynamic type to Integer
int forceInteger(var value) {
  if (value is double) {
    return value.toInt();
  }
  return int.tryParse("${value ?? "0"}") ?? 0;
}

/// forcing dynamic type to DateTime
DateTime forceDateTime(var value) =>
    DateTime.tryParse("${value ?? DateTime.now()}") ?? DateTime.now();

/// forcing dynamic type to Double
double forceDouble(var value) => double.tryParse("${value ?? "0"}") ?? 0;

/// forcing dynamic type to Boolean
bool forceBoolean(var value) =>
    "${value ?? ""}" == '1' || "${value ?? ""}".toLowerCase() == 'true'
        ? true
        : false;
