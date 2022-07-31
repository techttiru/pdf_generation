import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'audit_tracking.dart';

class Person {
  String? personId;
  String? pInitial;
  String? pName;
  String? pProfession;
  String? sInitial;
  String? sName;
  String? sProfession;
  String? pPhoneNumber;
  Address? homeAddress;
  Address? residentialAddress;
  Audit? audit;
  UpdateAudit? updateAudit;
  Timestamp? lastUpdatedAt;
  Person({
    this.personId,
    this.pInitial,
    this.pName,
    this.pProfession,
    this.sInitial,
    this.sName,
    this.sProfession,
    this.pPhoneNumber,
    this.homeAddress,
    this.residentialAddress,
    this.audit,
    this.updateAudit,
    this.lastUpdatedAt,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (personId != null) {
      result.addAll({'personId': personId});
    }
    if (pInitial != null) {
      result.addAll({'pInitial': pInitial});
    }
    if (pName != null) {
      result.addAll({'pName': pName});
    }
    if (pProfession != null) {
      result.addAll({'pProfession': pProfession});
    }
    if (sInitial != null) {
      result.addAll({'sInitial': sInitial});
    }
    if (sName != null) {
      result.addAll({'sName': sName});
    }
    if (sProfession != null) {
      result.addAll({'sProfession': sProfession});
    }
    if (pPhoneNumber != null) {
      result.addAll({'pPhoneNumber': pPhoneNumber});
    }
    if (homeAddress != null) {
      result.addAll({'homeAddress': homeAddress!.toMap()});
    }
    if (residentialAddress != null) {
      result.addAll({'residentialAddress': residentialAddress!.toMap()});
    }
    if (audit != null) {
      result.addAll({'audit': audit!.toMap()});
    }
    if (updateAudit != null) {
      result.addAll({'updateAudit': updateAudit!.toMap()});
    }
    if (lastUpdatedAt != null) {
      result.addAll({'lastUpdatedAt': lastUpdatedAt});
    }

    return result;
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      personId: map['personId'],
      pInitial: map['pInitial'],
      pName: map['pName'],
      pProfession: map['pProfession'],
      sInitial: map['sInitial'],
      sName: map['sName'],
      sProfession: map['sProfession'],
      pPhoneNumber: map['pPhoneNumber'],
      homeAddress: map['homeAddress'] != null
          ? Address.fromMap(map['homeAddress'])
          : null,
      residentialAddress: map['residentialAddress'] != null
          ? Address.fromMap(map['residentialAddress'])
          : null,
      audit: map['audit'] != null ? Audit.fromMap(map['audit']) : null,
      updateAudit: map['updateAudit'] != null
          ? UpdateAudit.fromMap(map['updateAudit'])
          : null,
      lastUpdatedAt: map['lastUpdatedAt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) => Person.fromMap(json.decode(source));

  Person copyWith({
    String? personId,
    String? pInitial,
    String? pName,
    String? pProfession,
    String? sInitial,
    String? sName,
    String? sProfession,
    String? pPhoneNumber,
    Address? homeAddress,
    Address? residentialAddress,
    Audit? audit,
    UpdateAudit? updateAudit,
    Timestamp? lastUpdatedAt,
  }) {
    return Person(
      personId: personId ?? this.personId,
      pInitial: pInitial ?? this.pInitial,
      pName: pName ?? this.pName,
      pProfession: pProfession ?? this.pProfession,
      sInitial: sInitial ?? this.sInitial,
      sName: sName ?? this.sName,
      sProfession: sProfession ?? this.sProfession,
      pPhoneNumber: pPhoneNumber ?? this.pPhoneNumber,
      homeAddress: homeAddress ?? this.homeAddress,
      residentialAddress: residentialAddress ?? this.residentialAddress,
      audit: audit ?? this.audit,
      updateAudit: updateAudit ?? this.updateAudit,
      lastUpdatedAt: lastUpdatedAt ?? this.lastUpdatedAt,
    );
  }

  @override
  String toString() {
    return 'Person(personId: $personId, pInitial: $pInitial, pName: $pName, pProfession: $pProfession, sInitial: $sInitial, sName: $sName, sProfession: $sProfession, pPhoneNumber: $pPhoneNumber, homeAddress: $homeAddress, residentialAddress: $residentialAddress, audit: $audit, updateAudit: $updateAudit, lastUpdatedAt: $lastUpdatedAt)';
  }
}

class Address {
  String? address1;
  String? city;
  Address({
    this.address1,
    this.city,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (address1 != null) {
      result.addAll({'address1': address1});
    }
    if (city != null) {
      result.addAll({'city': city});
    }

    return result;
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      address1: map['address1'],
      city: map['city'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Address.fromJson(String source) =>
      Address.fromMap(json.decode(source));

  @override
  String toString() => 'Address(address1: $address1, city: $city)';
}
