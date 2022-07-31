import 'dart:convert';

import 'package:pdf_generation_paging_determination/utility_file.dart';

import 'audit_tracking.dart';
import 'event_attendee_model.dart';
import 'received_amt_model.dart';

class AttendeeListViewModel {
  AttendeeDataModel? attendeeDataModel;
  bool? hasPendingWrites;
  bool? isGroupEntry;
  String? eventDocId;
  String? eventAttendeeEntryId;
  List<DenominationAmtModel>? receivedAmtDenominationList;
  List<DenominationAmtModel>? refundAmtDenominationList;
  Audit? audit;
  AttendeeListViewModel({
    this.attendeeDataModel,
    this.hasPendingWrites,
    this.isGroupEntry,
    this.eventDocId,
    this.eventAttendeeEntryId,
    this.receivedAmtDenominationList,
    this.refundAmtDenominationList,
    this.audit,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (attendeeDataModel != null) {
      result.addAll({'attendeeDataModel': attendeeDataModel!.toMap()});
    }
    if (hasPendingWrites != null) {
      result.addAll({'hasPendingWrites': hasPendingWrites});
    }
    if (isGroupEntry != null) {
      result.addAll({'isGroupEntry': isGroupEntry});
    }
    if (eventDocId != null) {
      result.addAll({'eventDocId': eventDocId});
    }
    if (eventAttendeeEntryId != null) {
      result.addAll({'eventAttendeeEntryId': eventAttendeeEntryId});
    }
    if (receivedAmtDenominationList != null) {
      result.addAll({
        'receivedAmtDenominationList':
            receivedAmtDenominationList!.map((x) => x.toMap()).toList()
      });
    }
    if (refundAmtDenominationList != null) {
      result.addAll({
        'refundAmtDenominationList':
            refundAmtDenominationList!.map((x) => x.toMap()).toList()
      });
    }
    if (audit != null) {
      result.addAll({'audit': audit!.toMap()});
    }

    return result;
  }

  factory AttendeeListViewModel.fromMap(Map<String, dynamic> map) {
    return AttendeeListViewModel(
      attendeeDataModel: map['attendeeDataModel'] != null
          ? AttendeeDataModel.fromMap(map['attendeeDataModel'])
          : null,
      hasPendingWrites: map['hasPendingWrites'],
      isGroupEntry: map['isGroupEntry'],
      eventDocId: map['eventDocId'],
      eventAttendeeEntryId: map['eventAttendeeEntryId'],
      receivedAmtDenominationList: map['receivedAmtDenominationList'] != null
          ? List<DenominationAmtModel>.from(map['receivedAmtDenominationList']
              ?.map((x) => DenominationAmtModel.fromMap(x)))
          : null,
      refundAmtDenominationList: map['refundAmtDenominationList'] != null
          ? List<DenominationAmtModel>.from(map['refundAmtDenominationList']
              ?.map((x) => DenominationAmtModel.fromMap(x)))
          : null,
      audit: map['audit'] != null ? Audit.fromMap(map['audit']) : null,
    );
  }

  String toJson() =>
      json.encode(toMap(), toEncodable: UtilityFunction.timestampToDateAndTime);

  factory AttendeeListViewModel.fromJson(String source) =>
      AttendeeListViewModel.fromMap(json.decode(source));

  AttendeeListViewModel copyWith({
    AttendeeDataModel? attendeeDataModel,
    bool? hasPendingWrites,
    bool? isGroupEntry,
    String? eventDocId,
    String? eventAttendeeEntryId,
    List<DenominationAmtModel>? receivedAmtDenominationList,
    List<DenominationAmtModel>? refundAmtDenominationList,
    Audit? audit,
  }) {
    return AttendeeListViewModel(
      attendeeDataModel: attendeeDataModel ?? this.attendeeDataModel,
      hasPendingWrites: hasPendingWrites ?? this.hasPendingWrites,
      isGroupEntry: isGroupEntry ?? this.isGroupEntry,
      eventDocId: eventDocId ?? this.eventDocId,
      eventAttendeeEntryId: eventAttendeeEntryId ?? this.eventAttendeeEntryId,
      receivedAmtDenominationList:
          receivedAmtDenominationList ?? this.receivedAmtDenominationList,
      refundAmtDenominationList:
          refundAmtDenominationList ?? this.refundAmtDenominationList,
      audit: audit ?? this.audit,
    );
  }

  @override
  String toString() {
    return 'AttendeeListViewModel(attendeeDataModel: $attendeeDataModel, hasPendingWrites: $hasPendingWrites, isGroupEntry: $isGroupEntry, eventDocId: $eventDocId, eventAttendeeEntryId: $eventAttendeeEntryId, receivedAmtDenominationList: $receivedAmtDenominationList, refundAmtDenominationList: $refundAmtDenominationList, audit: $audit)';
  }
}
