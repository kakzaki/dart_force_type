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
