import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import 'supporting_files.dart/event_attendee_model.dart';
import 'supporting_files.dart/person_model.dart';
import 'supporting_files.dart/string_split_model.dart';

class UtilityFunction {
  static Person convertAttendeeModelToPerson(
      AttendeeDataModel attendeeDataModel) {
    StringSplit splitPnameAndProfessional =
        parseStringAndSplit(attendeeDataModel.pNameAndProfession ?? '');
    StringSplit splitSnameAndProfessional =
        parseStringAndSplit(attendeeDataModel.sNameAndProfession ?? '');
    StringSplit splitHomeAddress =
        parseStringAndSplit(attendeeDataModel.homeAddress ?? '');
    StringSplit splitResidentialAddress =
        parseStringAndSplit(attendeeDataModel.residentialAddress ?? '');
    Person personData = Person(
      pInitial: attendeeDataModel.pInitial,
      pName: splitPnameAndProfessional.str1,
      pProfession: splitPnameAndProfessional.str2,
      sName: splitSnameAndProfessional.str1,
      sProfession: splitSnameAndProfessional.str2,
      sInitial: attendeeDataModel.sInitial,
      homeAddress:
          Address(city: splitHomeAddress.str1, address1: splitHomeAddress.str2),
      residentialAddress: Address(
          city: splitResidentialAddress.str1,
          address1: splitResidentialAddress.str2),
      pPhoneNumber: attendeeDataModel.pPhoneNumber,
    );

    return personData;
  }

  static StringSplit parseStringAndSplit(String splitData) {
    StringSplit stringSplit = StringSplit(str1: '', str2: '');
    final findingIndex = splitData.toLowerCase().trim().indexOf(',');
    if (findingIndex != -1) {
      stringSplit = stringSplit.copyWith(
          str1: splitData.trim().substring(0, findingIndex).trim());
      stringSplit = stringSplit.copyWith(
          str2: splitData.trim().substring(findingIndex + 1).trim());
    } else {
      stringSplit = stringSplit.copyWith(str1: splitData.trim());
    }
    return stringSplit;
  }

  static String concatinateSNames(Person person) {
    String str = '';

    if (person.sInitial != null && person.sInitial!.trim().isNotEmpty) {
      str = str + person.sInitial!.trim().toUpperCase();
    }

    if (person.sName != null && person.sName!.trim().isNotEmpty) {
      if (str.isNotEmpty) {
        str = '$str.${person.sName!.trim()}';
      } else {
        str = str + person.sName!.trim();
      }
    }
    return str;
  }

  static String concatinatePNames(Person person) {
    String str = '';

    if (person.pInitial != null && person.pInitial!.trim().isNotEmpty) {
      str = str + person.pInitial!.trim().toUpperCase();
    }

    if (person.pName != null && person.pName!.trim().isNotEmpty) {
      if (str.isNotEmpty) {
        str = '$str.${person.pName!.trim()}';
      } else {
        str = str + person.pName!.trim();
      }
    }
    return str;
  }

  static String convertToCurrencyWithSymbol(double amt) {
    //return amt.toString();
    return NumberFormat.currency(
      name: "INR",
      locale: 'en_IN',
      decimalDigits: 0, // change it to get decimal places
      symbol: '₹ ',
    ).format(amt);
  }

  static Object? timestampToDateAndTime(Object? object) {
    if (object is Timestamp) {
      //need to convert to date string as needed.
      // print(object.toDate().toString());
      return object.toDate().toString();
    }
    return object;
  }
}
