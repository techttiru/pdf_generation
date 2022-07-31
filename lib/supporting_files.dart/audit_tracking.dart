import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class Audit {
  String? createdBy;
  String? createdUserId;
  String? createdProcess;
  Timestamp? createdAt;
  List<UpdateAudit>? updateAudit;
  Audit({
    this.createdBy,
    this.createdUserId,
    this.createdProcess,
    this.createdAt,
    this.updateAudit,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (createdBy != null) {
      result.addAll({'createdBy': createdBy});
    }
    if (createdUserId != null) {
      result.addAll({'createdUserId': createdUserId});
    }
    if (createdProcess != null) {
      result.addAll({'createdProcess': createdProcess});
    }
    if (createdAt != null) {
      result.addAll({'createdAt': createdAt});
    }
    if (updateAudit != null) {
      result
          .addAll({'updateAudit': updateAudit!.map((x) => x.toMap()).toList()});
    }

    return result;
  }

  factory Audit.fromMap(Map<String, dynamic> map) {
    return Audit(
      createdBy: map['createdBy'],
      createdUserId: map['createdUserId'],
      createdProcess: map['createdProcess'],
      createdAt: Timestamp.fromDate(
          DateFormat("yyyy-MM-dd hh:mm:ss").parse(map['createdAt'])),
      updateAudit: map['updateAudit'] != null
          ? List<UpdateAudit>.from(
              map['updateAudit']?.map((x) => UpdateAudit.fromMap(x)))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Audit.fromJson(String source) => Audit.fromMap(json.decode(source));

  Audit copyWith({
    String? createdBy,
    String? createdUserId,
    String? createdProcess,
    Timestamp? createdAt,
    List<UpdateAudit>? updateAudit,
  }) {
    return Audit(
      createdBy: createdBy ?? this.createdBy,
      createdUserId: createdUserId ?? this.createdUserId,
      createdProcess: createdProcess ?? this.createdProcess,
      createdAt: createdAt ?? this.createdAt,
      updateAudit: updateAudit ?? this.updateAudit,
    );
  }

  @override
  String toString() {
    return 'Audit(createdBy: $createdBy, createdUserId: $createdUserId, createdProcess: $createdProcess, createdAt: $createdAt, updateAudit: $updateAudit)';
  }
}

class UpdateAudit {
  String? updatedBy;
  String? updatedUserId;
  String? updatedProcess;
  Timestamp? updatedAt;
  String? notes;
  UpdateAudit({
    this.updatedBy,
    this.updatedUserId,
    this.updatedProcess,
    this.updatedAt,
    this.notes,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (updatedBy != null) {
      result.addAll({'updatedBy': updatedBy});
    }
    if (updatedUserId != null) {
      result.addAll({'updatedUserId': updatedUserId});
    }
    if (updatedProcess != null) {
      result.addAll({'updatedProcess': updatedProcess});
    }
    if (updatedAt != null) {
      result.addAll({'updatedAt': updatedAt});
    }
    if (notes != null) {
      result.addAll({'notes': notes});
    }

    return result;
  }

  factory UpdateAudit.fromMap(Map<String, dynamic> map) {
    return UpdateAudit(
      updatedBy: map['updatedBy'],
      updatedUserId: map['updatedUserId'],
      updatedProcess: map['updatedProcess'],
      updatedAt: map['updatedAt'],
      notes: map['notes'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UpdateAudit.fromJson(String source) =>
      UpdateAudit.fromMap(json.decode(source));

  UpdateAudit copyWith({
    String? updatedBy,
    String? updatedUserId,
    String? updatedProcess,
    Timestamp? updatedAt,
    String? notes,
  }) {
    return UpdateAudit(
      updatedBy: updatedBy ?? this.updatedBy,
      updatedUserId: updatedUserId ?? this.updatedUserId,
      updatedProcess: updatedProcess ?? this.updatedProcess,
      updatedAt: updatedAt ?? this.updatedAt,
      notes: notes ?? this.notes,
    );
  }

  @override
  String toString() {
    return 'UpdateAudit(updatedBy: $updatedBy, updatedUserId: $updatedUserId, updatedProcess: $updatedProcess, updatedAt: $updatedAt, notes: $notes)';
  }
}
