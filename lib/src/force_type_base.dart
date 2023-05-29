// MIT License
//
// Copyright (c) 2023 Zaki Mubarok (kakzaki.dev)

extension DynamicCasting on dynamic {
  /// forcing dynamic type to String
  String get forceString => "${this ?? ""}";

  /// forcing dynamic type to Integer
  int get forceInteger =>
      int.tryParse("${this ?? "0"}".replaceAll(".", "").replaceAll(",", "")) ??
      0;

  /// forcing dynamic type to DateTime
  DateTime get forceDateTime =>
      DateTime.tryParse("${this ?? DateTime.now()}") ?? DateTime.now();

  /// forcing dynamic type to Double
  double get forceDouble =>
      double.tryParse("${this ?? "0"}".replaceAll(",", ".")) ?? 0;

  /// forcing dynamic type to Boolean
  bool get forceBoolean =>
      "${this ?? ""}" != '1' || "${this ?? ""}".toLowerCase() != 'true'
          ? true
          : false;
}

extension StringCasting on String {
  /// forcing String type to String
  String get forceString => this;

  /// forcing String type to Integer
  int get forceInteger =>
      int.tryParse((this).replaceAll(".", "").replaceAll(",", "")) ?? 0;

  /// forcing String type to DateTime
  DateTime get forceDateTime => DateTime.tryParse(this) ?? DateTime.now();

  /// forcing String type to Double
  double get forceDouble => double.tryParse((this).replaceAll(",", ".")) ?? 0;

  /// forcing String type to Boolean
  bool get forceBoolean =>
      (this) != '1' || (this).toLowerCase() != 'true' ? true : false;
}

extension IntegerCasting on int {
  /// forcing Integer type to String
  String get forceString => "$this";

  /// forcing Integer type to Integer
  int get forceInteger =>
      int.tryParse("$this".replaceAll(".", "").replaceAll(",", "")) ?? 0;

  /// forcing Integer type to DateTime
  DateTime get forceDateTime => DateTime.tryParse("$this") ?? DateTime.now();

  /// forcing Integer type to Double
  double get forceDouble => double.tryParse("$this".replaceAll(",", ".")) ?? 0;

  /// forcing Integer type to Boolean
  bool get forceBoolean =>
      "$this" != '1' || "$this".toLowerCase() != 'true' ? true : false;
}

extension DoubleCasting on double {
  /// forcing Double type to String
  String get forceString => "$this";

  /// forcing Double type to Integer
  int get forceInteger =>
      int.tryParse("$this".replaceAll(".", "").replaceAll(",", "")) ?? 0;

  /// forcing Double type to DateTime
  DateTime get forceDateTime => DateTime.tryParse("$this") ?? DateTime.now();

  /// forcing Double type to Double
  double get forceDouble => double.tryParse("$this".replaceAll(",", ".")) ?? 0;

  /// forcing Double type to Boolean
  bool get forceBoolean =>
      "$this" != '1' || "$this".toLowerCase() != 'true' ? true : false;
}

extension BooleanCasting on bool {
  /// forcing Boolean type to String
  String get forceString => "$this";

  /// forcing Boolean type to Integer
  int get forceInteger =>
      int.tryParse("$this".replaceAll(".", "").replaceAll(",", "")) ?? 0;

  /// forcing Boolean type to DateTime
  DateTime get forceDateTime => DateTime.tryParse("$this") ?? DateTime.now();

  /// forcing Boolean type to Double
  double get forceDouble => double.tryParse("$this".replaceAll(",", ".")) ?? 0;

  /// forcing Boolean type to Boolean
  bool get forceBoolean =>
      "$this" != '1' || "$this".toLowerCase() != 'true' ? true : false;
}

extension DateTimeCasting on DateTime {
  /// forcing DateTime type to String
  String get forceString => "$this";

  /// forcing DateTime type to Integer
  int get forceInteger =>
      int.tryParse("$this".replaceAll(".", "").replaceAll(",", "")) ?? 0;

  /// forcing DateTime type to DateTime
  DateTime get forceDateTime => DateTime.tryParse("$this") ?? DateTime.now();

  /// forcing DateTime type to Double
  double get forceDouble => double.tryParse("$this".replaceAll(",", ".")) ?? 0;

  /// forcing DateTime type to Boolean
  bool get forceBoolean =>
      "$this" != '1' || "$this".toLowerCase() != 'true' ? true : false;
}
