import 'dart:convert';

class AttendeeDataModel {
  String? attendeeId;
  String? searchTextField;
  String? homeAddress;
  String? residentialAddress;
  String? pInitial;
  String? pNameAndProfession;
  String? sInitial;
  String? sNameAndProfession;
  String? pPhoneNumber;
  double? cashAmt;
  double? gPayAmt;
  double? paidInAdvanceAmt;
  bool? isCashPayment;
  bool? isGpayPayment;
  bool? isPaidInAdvancePayment;
  String? cashAmtOperation;
  String? gpayAmtOperation;
  String? paidInAdvanceAmtOperation;
  bool? isUncle;
  String? notes;
  String? personId;
  String? localDbPersonRecId;
  String? attendeeEntryId;
  String? attendeeEntryStatus;
  String? attendeePrintReceiptId;
  String? attendeeStatus;
  bool? isAttendeeUpdated;
  int? numberOfTimesAttendeeUpdated;
  bool? isPersonUpdated;
  int? numberOfTimesPersonUpdated;
  String? attendeeUpdatedNotes;
  AuditChange? attendeeAuditChanges;
  AttendeeDataModel({
    this.attendeeId,
    this.searchTextField,
    this.homeAddress,
    this.residentialAddress,
    this.pInitial,
    this.pNameAndProfession,
    this.sInitial,
    this.sNameAndProfession,
    this.pPhoneNumber,
    this.cashAmt,
    this.gPayAmt,
    this.paidInAdvanceAmt,
    this.isCashPayment,
    this.isGpayPayment,
    this.isPaidInAdvancePayment,
    this.cashAmtOperation,
    this.gpayAmtOperation,
    this.paidInAdvanceAmtOperation,
    this.isUncle,
    this.notes,
    this.personId,
    this.localDbPersonRecId,
    this.attendeeEntryId,
    this.attendeeEntryStatus,
    this.attendeePrintReceiptId,
    this.attendeeStatus,
    this.isAttendeeUpdated,
    this.numberOfTimesAttendeeUpdated,
    this.isPersonUpdated,
    this.numberOfTimesPersonUpdated,
    this.attendeeUpdatedNotes,
    this.attendeeAuditChanges,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (attendeeId != null) {
      result.addAll({'attendeeId': attendeeId});
    }
    if (searchTextField != null) {
      result.addAll({'searchTextField': searchTextField});
    }
    if (homeAddress != null) {
      result.addAll({'homeAddress': homeAddress});
    }
    if (residentialAddress != null) {
      result.addAll({'residentialAddress': residentialAddress});
    }
    if (pInitial != null) {
      result.addAll({'pInitial': pInitial});
    }
    if (pNameAndProfession != null) {
      result.addAll({'pNameAndProfession': pNameAndProfession});
    }
    if (sInitial != null) {
      result.addAll({'sInitial': sInitial});
    }
    if (sNameAndProfession != null) {
      result.addAll({'sNameAndProfession': sNameAndProfession});
    }
    if (pPhoneNumber != null) {
      result.addAll({'pPhoneNumber': pPhoneNumber});
    }
    if (cashAmt != null) {
      result.addAll({'cashAmt': cashAmt});
    }
    if (gPayAmt != null) {
      result.addAll({'gPayAmt': gPayAmt});
    }
    if (paidInAdvanceAmt != null) {
      result.addAll({'paidInAdvanceAmt': paidInAdvanceAmt});
    }
    if (isCashPayment != null) {
      result.addAll({'isCashPayment': isCashPayment});
    }
    if (isGpayPayment != null) {
      result.addAll({'isGpayPayment': isGpayPayment});
    }
    if (isPaidInAdvancePayment != null) {
      result.addAll({'isPaidInAdvancePayment': isPaidInAdvancePayment});
    }
    if (cashAmtOperation != null) {
      result.addAll({'cashAmtOperation': cashAmtOperation});
    }
    if (gpayAmtOperation != null) {
      result.addAll({'gpayAmtOperation': gpayAmtOperation});
    }
    if (paidInAdvanceAmtOperation != null) {
      result.addAll({'paidInAdvanceAmtOperation': paidInAdvanceAmtOperation});
    }
    if (isUncle != null) {
      result.addAll({'isUncle': isUncle});
    }
    if (notes != null) {
      result.addAll({'notes': notes});
    }
    if (personId != null) {
      result.addAll({'personId': personId});
    }
    if (localDbPersonRecId != null) {
      result.addAll({'localDbPersonRecId': localDbPersonRecId});
    }
    if (attendeeEntryId != null) {
      result.addAll({'attendeeEntryId': attendeeEntryId});
    }
    if (attendeeEntryStatus != null) {
      result.addAll({'attendeeEntryStatus': attendeeEntryStatus});
    }
    if (attendeePrintReceiptId != null) {
      result.addAll({'attendeePrintReceiptId': attendeePrintReceiptId});
    }
    if (attendeeStatus != null) {
      result.addAll({'attendeeStatus': attendeeStatus});
    }
    if (isAttendeeUpdated != null) {
      result.addAll({'isAttendeeUpdated': isAttendeeUpdated});
    }
    if (numberOfTimesAttendeeUpdated != null) {
      result.addAll(
          {'numberOfTimesAttendeeUpdated': numberOfTimesAttendeeUpdated});
    }
    if (isPersonUpdated != null) {
      result.addAll({'isPersonUpdated': isPersonUpdated});
    }
    if (numberOfTimesPersonUpdated != null) {
      result.addAll({'numberOfTimesPersonUpdated': numberOfTimesPersonUpdated});
    }
    if (attendeeUpdatedNotes != null) {
      result.addAll({'attendeeUpdatedNotes': attendeeUpdatedNotes});
    }
    if (attendeeAuditChanges != null) {
      result.addAll({'attendeeAuditChanges': attendeeAuditChanges!.toMap()});
    }

    return result;
  }

  factory AttendeeDataModel.fromMap(Map<String, dynamic> map) {
    return AttendeeDataModel(
      attendeeId: map['attendeeId'],
      searchTextField: map['searchTextField'],
      homeAddress: map['homeAddress'],
      residentialAddress: map['residentialAddress'],
      pInitial: map['pInitial'],
      pNameAndProfession: map['pNameAndProfession'],
      sInitial: map['sInitial'],
      sNameAndProfession: map['sNameAndProfession'],
      pPhoneNumber: map['pPhoneNumber'],
      cashAmt: map['cashAmt']?.toDouble(),
      gPayAmt: map['gPayAmt']?.toDouble(),
      paidInAdvanceAmt: map['paidInAdvanceAmt']?.toDouble(),
      isCashPayment: map['isCashPayment'],
      isGpayPayment: map['isGpayPayment'],
      isPaidInAdvancePayment: map['isPaidInAdvancePayment'],
      cashAmtOperation: map['cashAmtOperation'],
      gpayAmtOperation: map['gpayAmtOperation'],
      paidInAdvanceAmtOperation: map['paidInAdvanceAmtOperation'],
      isUncle: map['isUncle'],
      notes: map['notes'],
      personId: map['personId'],
      localDbPersonRecId: map['localDbPersonRecId'],
      attendeeEntryId: map['attendeeEntryId'],
      attendeeEntryStatus: map['attendeeEntryStatus'],
      attendeePrintReceiptId: map['attendeePrintReceiptId'],
      attendeeStatus: map['attendeeStatus'],
      isAttendeeUpdated: map['isAttendeeUpdated'],
      numberOfTimesAttendeeUpdated:
          map['numberOfTimesAttendeeUpdated']?.toInt(),
      isPersonUpdated: map['isPersonUpdated'],
      numberOfTimesPersonUpdated: map['numberOfTimesPersonUpdated']?.toInt(),
      attendeeUpdatedNotes: map['attendeeUpdatedNotes'],
      attendeeAuditChanges: map['attendeeAuditChanges'] != null
          ? AuditChange.fromMap(map['attendeeAuditChanges'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AttendeeDataModel.fromJson(String source) =>
      AttendeeDataModel.fromMap(json.decode(source));

  AttendeeDataModel copyWith({
    String? attendeeId,
    String? searchTextField,
    String? homeAddress,
    String? residentialAddress,
    String? pInitial,
    String? pNameAndProfession,
    String? sInitial,
    String? sNameAndProfession,
    String? pPhoneNumber,
    double? cashAmt,
    double? gPayAmt,
    double? paidInAdvanceAmt,
    bool? isCashPayment,
    bool? isGpayPayment,
    bool? isPaidInAdvancePayment,
    String? cashAmtOperation,
    String? gpayAmtOperation,
    String? paidInAdvanceAmtOperation,
    bool? isUncle,
    String? notes,
    String? personId,
    String? localDbPersonRecId,
    String? attendeeEntryId,
    String? attendeeEntryStatus,
    String? attendeePrintReceiptId,
    String? attendeeStatus,
    bool? isAttendeeUpdated,
    int? numberOfTimesAttendeeUpdated,
    bool? isPersonUpdated,
    int? numberOfTimesPersonUpdated,
    String? attendeeUpdatedNotes,
    AuditChange? attendeeAuditChanges,
  }) {
    return AttendeeDataModel(
      attendeeId: attendeeId ?? this.attendeeId,
      searchTextField: searchTextField ?? this.searchTextField,
      homeAddress: homeAddress ?? this.homeAddress,
      residentialAddress: residentialAddress ?? this.residentialAddress,
      pInitial: pInitial ?? this.pInitial,
      pNameAndProfession: pNameAndProfession ?? this.pNameAndProfession,
      sInitial: sInitial ?? this.sInitial,
      sNameAndProfession: sNameAndProfession ?? this.sNameAndProfession,
      pPhoneNumber: pPhoneNumber ?? this.pPhoneNumber,
      cashAmt: cashAmt ?? this.cashAmt,
      gPayAmt: gPayAmt ?? this.gPayAmt,
      paidInAdvanceAmt: paidInAdvanceAmt ?? this.paidInAdvanceAmt,
      isCashPayment: isCashPayment ?? this.isCashPayment,
      isGpayPayment: isGpayPayment ?? this.isGpayPayment,
      isPaidInAdvancePayment:
          isPaidInAdvancePayment ?? this.isPaidInAdvancePayment,
      cashAmtOperation: cashAmtOperation ?? this.cashAmtOperation,
      gpayAmtOperation: gpayAmtOperation ?? this.gpayAmtOperation,
      paidInAdvanceAmtOperation:
          paidInAdvanceAmtOperation ?? this.paidInAdvanceAmtOperation,
      isUncle: isUncle ?? this.isUncle,
      notes: notes ?? this.notes,
      personId: personId ?? this.personId,
      localDbPersonRecId: localDbPersonRecId ?? this.localDbPersonRecId,
      attendeeEntryId: attendeeEntryId ?? this.attendeeEntryId,
      attendeeEntryStatus: attendeeEntryStatus ?? this.attendeeEntryStatus,
      attendeePrintReceiptId:
          attendeePrintReceiptId ?? this.attendeePrintReceiptId,
      attendeeStatus: attendeeStatus ?? this.attendeeStatus,
      isAttendeeUpdated: isAttendeeUpdated ?? this.isAttendeeUpdated,
      numberOfTimesAttendeeUpdated:
          numberOfTimesAttendeeUpdated ?? this.numberOfTimesAttendeeUpdated,
      isPersonUpdated: isPersonUpdated ?? this.isPersonUpdated,
      numberOfTimesPersonUpdated:
          numberOfTimesPersonUpdated ?? this.numberOfTimesPersonUpdated,
      attendeeUpdatedNotes: attendeeUpdatedNotes ?? this.attendeeUpdatedNotes,
      attendeeAuditChanges: attendeeAuditChanges ?? this.attendeeAuditChanges,
    );
  }

  @override
  String toString() {
    return 'AttendeeDataModel(attendeeId: $attendeeId, searchTextField: $searchTextField, homeAddress: $homeAddress, residentialAddress: $residentialAddress, pInitial: $pInitial, pNameAndProfession: $pNameAndProfession, sInitial: $sInitial, sNameAndProfession: $sNameAndProfession, pPhoneNumber: $pPhoneNumber, cashAmt: $cashAmt, gPayAmt: $gPayAmt, paidInAdvanceAmt: $paidInAdvanceAmt, isCashPayment: $isCashPayment, isGpayPayment: $isGpayPayment, isPaidInAdvancePayment: $isPaidInAdvancePayment, cashAmtOperation: $cashAmtOperation, gpayAmtOperation: $gpayAmtOperation, paidInAdvanceAmtOperation: $paidInAdvanceAmtOperation, isUncle: $isUncle, notes: $notes, personId: $personId, localDbPersonRecId: $localDbPersonRecId, attendeeEntryId: $attendeeEntryId, attendeeEntryStatus: $attendeeEntryStatus, attendeePrintReceiptId: $attendeePrintReceiptId, attendeeStatus: $attendeeStatus, isAttendeeUpdated: $isAttendeeUpdated, numberOfTimesAttendeeUpdated: $numberOfTimesAttendeeUpdated, isPersonUpdated: $isPersonUpdated, numberOfTimesPersonUpdated: $numberOfTimesPersonUpdated, attendeeUpdatedNotes: $attendeeUpdatedNotes, attendeeAuditChanges: $attendeeAuditChanges)';
  }
}

class AuditChange {
  List<AttendeeAuditChange>? attendeeAuditChanges;
  AuditChange({
    this.attendeeAuditChanges,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (attendeeAuditChanges != null) {
      result.addAll({
        'attendeeAuditChanges':
            attendeeAuditChanges!.map((x) => x.toMap()).toList()
      });
    }

    return result;
  }

  factory AuditChange.fromMap(Map<String, dynamic> map) {
    return AuditChange(
      attendeeAuditChanges: map['attendeeAuditChanges'] != null
          ? List<AttendeeAuditChange>.from(map['attendeeAuditChanges']
              ?.map((x) => AttendeeAuditChange.fromMap(x)))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuditChange.fromJson(String source) =>
      AuditChange.fromMap(json.decode(source));

  AuditChange copyWith({
    List<AttendeeAuditChange>? attendeeAuditChanges,
  }) {
    return AuditChange(
      attendeeAuditChanges: attendeeAuditChanges ?? this.attendeeAuditChanges,
    );
  }

  @override
  String toString() =>
      'AuditChange(attendeeAuditChanges: $attendeeAuditChanges)';
}

class AttendeeAuditChange {
  String? fieldName;
  String? oldValue;
  String? newValue;
  AttendeeAuditChange({
    this.fieldName,
    this.oldValue,
    this.newValue,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (fieldName != null) {
      result.addAll({'fieldName': fieldName});
    }
    if (oldValue != null) {
      result.addAll({'oldValue': oldValue});
    }
    if (newValue != null) {
      result.addAll({'newValue': newValue});
    }

    return result;
  }

  factory AttendeeAuditChange.fromMap(Map<String, dynamic> map) {
    return AttendeeAuditChange(
      fieldName: map['fieldName'],
      oldValue: map['oldValue'],
      newValue: map['newValue'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AttendeeAuditChange.fromJson(String source) =>
      AttendeeAuditChange.fromMap(json.decode(source));

  AttendeeAuditChange copyWith({
    String? fieldName,
    String? oldValue,
    String? newValue,
  }) {
    return AttendeeAuditChange(
      fieldName: fieldName ?? this.fieldName,
      oldValue: oldValue ?? this.oldValue,
      newValue: newValue ?? this.newValue,
    );
  }

  @override
  String toString() =>
      'AttendeeAuditChange(fieldName: $fieldName, oldValue: $oldValue, newValue: $newValue)';
}
