import 'dart:convert';

class DenominationAmtModel {
  int amt;
  int count;
  int totalAmt;
  DenominationAmtModel({
    required this.amt,
    required this.count,
    required this.totalAmt,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'amt': amt});
    result.addAll({'count': count});
    result.addAll({'totalAmt': totalAmt});

    return result;
  }

  factory DenominationAmtModel.fromMap(Map<String, dynamic> map) {
    return DenominationAmtModel(
      amt: map['amt']?.toInt() ?? 0,
      count: map['count']?.toInt() ?? 0,
      totalAmt: map['totalAmt']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory DenominationAmtModel.fromJson(String source) =>
      DenominationAmtModel.fromMap(json.decode(source));

  DenominationAmtModel copyWith({
    int? amt,
    int? count,
    int? totalAmt,
  }) {
    return DenominationAmtModel(
      amt: amt ?? this.amt,
      count: count ?? this.count,
      totalAmt: totalAmt ?? this.totalAmt,
    );
  }

  @override
  String toString() =>
      'DenominationAmtModel(amt: $amt, count: $count, totalAmt: $totalAmt)';
}
