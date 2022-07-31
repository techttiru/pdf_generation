import 'dart:convert';

class StringSplit {
  String str1;
  String str2;
  StringSplit({
    required this.str1,
    required this.str2,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'str1': str1});
    result.addAll({'str2': str2});

    return result;
  }

  factory StringSplit.fromMap(Map<String, dynamic> map) {
    return StringSplit(
      str1: map['str1'] ?? '',
      str2: map['str2'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory StringSplit.fromJson(String source) =>
      StringSplit.fromMap(json.decode(source));

  StringSplit copyWith({
    String? str1,
    String? str2,
  }) {
    return StringSplit(
      str1: str1 ?? this.str1,
      str2: str2 ?? this.str2,
    );
  }

  @override
  String toString() => 'StringSplit(str1: $str1, str2: $str2)';
}
