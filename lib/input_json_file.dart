import 'dart:convert';
import 'supporting_files.dart/attendee_list_view_model.dart';

class InputJsonData {
  static List<AttendeeListViewModel> getAttendeeModel() {
    final jsonString = getInputJsonString();

    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);

    final m1 = (jsonMap['jsonData'] as List);

    final m2 = m1.map((e) {
      return AttendeeListViewModel.fromMap(e as Map<String, dynamic>);
    }).toList();

    return m2;
  }

  static String getInputJsonString() {
    String str = '''{ "jsonData" : [
  {
    "attendeeDataModel": {
      "attendeeId": "01366400-090d-11ed-be85-bb4e03eaea00",
      "homeAddress": "மதுரை",
      "residentialAddress": "வாழசமுத்திரப்பட்டி",
      "pInitial": "M",
      "pNameAndProfession": "சிவராமகிருஷ்ணன், கவின் புரௌசிங் சென்டா்",
      "sInitial": "P",
      "sNameAndProfession": "பேச்சி",
      "pPhoneNumber": "9043606296",
      "cashAmt": 1000,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "1cec49f0-01d6-11ed-9ef0-1f25f63e0d87",
      "localDbPersonRecId": "4",
      "attendeeEntryId": "04a7bd00-090d-11ed-be85-bb4e03eaea00",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "04a7bd00-090d-11ed-be85-bb4e03eaea00",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 2,
        "totalAmt": 1000
      }
    ],
    "audit": {
      "createdBy": "சிவராமகிருஷ்ணன்",
      "createdUserId": "iiz2FHezIehuPTEWwnfi3J7hIcp2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-21 11:51:43.570"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "68cef2c0-0729-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கீழக்குயில்குடி",
      "residentialAddress": "",
      "pInitial": "V",
      "pNameAndProfession": "ஜெயராஜ், வெண்மணி சைக்கிள்",
      "sInitial": "",
      "sNameAndProfession": "ராணி",
      "pPhoneNumber": "",
      "cashAmt": 200,
      "gPayAmt": 200,
      "paidInAdvanceAmt": 100,
      "isCashPayment": true,
      "isGpayPayment": true,
      "isPaidInAdvancePayment": true,
      "notes": "",
      "personId": "a5284961-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "249",
      "attendeeEntryId": "6efde520-0729-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "6efde520-0729-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 100,
        "count": 2,
        "totalAmt": 200
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 02:10:05.555"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "498a7e20-0729-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "அம்பட்டையம்பட்டி பாண்டியன்நகர்",
      "residentialAddress": "",
      "pInitial": "R",
      "pNameAndProfession": "கனிராஜா",
      "sInitial": "",
      "sNameAndProfession": "",
      "pPhoneNumber": "",
      "cashAmt": 1001,
      "gPayAmt": 1000,
      "paidInAdvanceAmt": 50001,
      "isCashPayment": true,
      "isGpayPayment": true,
      "isPaidInAdvancePayment": true,
      "isUncle": true,
      "notes": "",
      "personId": "a527fb23-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "98",
      "attendeeEntryId": "50d1e560-0729-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "50d1e560-0729-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 2,
        "totalAmt": 1000
      },
      {
        "amt": 1,
        "count": 1,
        "totalAmt": 1
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 02:09:14.934"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "27677aa0-0729-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "அம்பட்டையம்பட்டி",
      "residentialAddress": "",
      "pInitial": "",
      "pNameAndProfession": "ஜெயப்பாண்டி12, ஜெயப்பாண்டி",
      "sInitial": "",
      "sNameAndProfession": "நிஷாந்தி ஜெயராம் மகள், நிஷாந்தி ஜெயராம் மகள்",
      "pPhoneNumber": "",
      "cashAmt": 500,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a527d410-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "94",
      "attendeeEntryId": "2aabd030-0729-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "2aabd030-0729-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 100,
        "count": 5,
        "totalAmt": 500
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 02:08:10.931"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "1a9eed30-0729-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கம்பம்",
      "residentialAddress": "nt பட்டி",
      "pInitial": "A",
      "pNameAndProfession": "முருகன், காவல்துறை",
      "sInitial": "மு",
      "sNameAndProfession": "வள்ளி, ஆசிரியை",
      "pPhoneNumber": "",
      "cashAmt": 500,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a527fb31-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "112",
      "attendeeEntryId": "1da74b30-0729-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "1da74b30-0729-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 1,
        "totalAmt": 500
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 02:07:49.091"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "08e40c10-0729-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "உசிலம்பட்டி",
      "residentialAddress": "",
      "pInitial": "P",
      "pNameAndProfession": "சுரேஷ்குமார், jp mobiles",
      "sInitial": "",
      "sNameAndProfession": "ஜோதி",
      "pPhoneNumber": "",
      "cashAmt": 51,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a5282230-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "140",
      "attendeeEntryId": "0dc15120-0729-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "0dc15120-0729-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 20,
        "count": 2,
        "totalAmt": 40
      },
      {
        "amt": 10,
        "count": 1,
        "totalAmt": 10
      },
      {
        "amt": 1,
        "count": 1,
        "totalAmt": 1
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 02:07:22.418"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "f5ddbf30-0728-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கீழக்குயில்குடி",
      "residentialAddress": "",
      "pInitial": "P",
      "pNameAndProfession": "ராஜா என்ற கலுவன், mku பால்த்துரை நகை அடகுக்கடை",
      "sInitial": "",
      "sNameAndProfession": "",
      "pPhoneNumber": "9597990402",
      "cashAmt": 1201,
      "gPayAmt": 1000,
      "paidInAdvanceAmt": 1000,
      "isCashPayment": true,
      "isGpayPayment": true,
      "isPaidInAdvancePayment": true,
      "notes": "",
      "personId": "a5287068-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "318",
      "attendeeEntryId": "fda09800-0728-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "fda09800-0728-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 2,
        "totalAmt": 1000
      },
      {
        "amt": 200,
        "count": 1,
        "totalAmt": 200
      },
      {
        "amt": 1,
        "count": 1,
        "totalAmt": 1
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 02:06:55.360"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "dd2e03a0-0728-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கீழக்குயில்குடி",
      "residentialAddress": "",
      "pInitial": "",
      "pNameAndProfession": "கண்ணு மகன் K ராதாகிருஷ்ணன்",
      "sInitial": "",
      "sNameAndProfession": "",
      "pPhoneNumber": "",
      "cashAmt": 1001,
      "gPayAmt": 1001,
      "paidInAdvanceAmt": 1001,
      "isCashPayment": true,
      "isGpayPayment": true,
      "isPaidInAdvancePayment": true,
      "notes": "",
      "personId": "a5282268-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "196",
      "attendeeEntryId": "e30b0570-0728-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "e30b0570-0728-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 2,
        "totalAmt": 1000
      },
      {
        "amt": 1,
        "count": 1,
        "totalAmt": 1
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 02:06:10.760"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "c3921350-0728-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கீழக்குயில்குடி",
      "residentialAddress": "",
      "pInitial": "SR",
      "pNameAndProfession": "செல்லக்கண்ணு, ex ஊராட்சி மன்ற துணை தலைவர்",
      "sInitial": "",
      "sNameAndProfession": "",
      "pPhoneNumber": "",
      "cashAmt": 5001,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a5284953-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "235",
      "attendeeEntryId": "ccaf7310-0728-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "ccaf7310-0728-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 10,
        "totalAmt": 5000
      },
      {
        "amt": 1,
        "count": 1,
        "totalAmt": 1
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 02:05:33.249"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "b466ddc0-0728-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கீழக்குயில்குடி",
      "residentialAddress": "",
      "pInitial": "",
      "pNameAndProfession": "அரிச்சந்திரன், ஊராட்சி மன்ற தலைவர் அய்யனன்",
      "sInitial": "",
      "sNameAndProfession": "சுந்தரவள்ளி",
      "pPhoneNumber": "",
      "cashAmt": 501,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a528225c-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "184",
      "attendeeEntryId": "ba1e5630-0728-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "ba1e5630-0728-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 1,
        "totalAmt": 500
      },
      {
        "amt": 1,
        "count": 1,
        "totalAmt": 1
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 02:05:02.099"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "a454a390-0728-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "NGO காலனி, அய்யனார்நகர்",
      "residentialAddress": "",
      "pInitial": "J",
      "pNameAndProfession": "ஜெயபிரகாஷ்",
      "sInitial": "",
      "sNameAndProfession": "சிவரஞ்சனி",
      "pPhoneNumber": "6382333629",
      "cashAmt": 1000,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a5282247-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "163",
      "attendeeEntryId": "a9356b10-0728-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "a9356b10-0728-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 2,
        "totalAmt": 1000
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 02:04:33.730"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "86134710-0728-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "உசிலம்பட்டி, முத்துராமலிங்கத்தேவர் தெரு",
      "residentialAddress": "",
      "pInitial": "ச",
      "pNameAndProfession": "சொக்கலிங்கம்",
      "sInitial": "",
      "sNameAndProfession": "100, காவல்துறை",
      "pPhoneNumber": "",
      "cashAmt": 100000,
      "gPayAmt": 100000,
      "paidInAdvanceAmt": 100000,
      "isCashPayment": true,
      "isGpayPayment": true,
      "isPaidInAdvancePayment": true,
      "isUncle": true,
      "notes": "கிடா ரூ-10000,அரிசி சிப்பம்-10,2பவுன் செயின்-2kdm 916",
      "personId": "8be2d7b0-0380-11ed-89e9-0322c3f4182d",
      "localDbPersonRecId": "89",
      "attendeeEntryId": "944157f0-0728-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "944157f0-0728-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 200,
        "totalAmt": 100000
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 02:03:58.575"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "2c8b0cf0-0728-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கீழக்குயில்குடி",
      "residentialAddress": "",
      "pInitial": "",
      "pNameAndProfession": "செல்லப்பாண்டி மகன் பிரகாஷ்",
      "sInitial": "",
      "sNameAndProfession": "கௌசல்யா",
      "pPhoneNumber": "",
      "cashAmt": 100,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a5284957-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "239",
      "attendeeEntryId": "33987870-0728-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "33987870-0728-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 50,
        "count": 1,
        "totalAmt": 50
      },
      {
        "amt": 20,
        "count": 2,
        "totalAmt": 40
      },
      {
        "amt": 10,
        "count": 1,
        "totalAmt": 10
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 02:01:16.407"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "1c91d900-0728-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "அம்பட்டையம்பட்டி",
      "residentialAddress": "",
      "pInitial": "",
      "pNameAndProfession": "ஜெயப்பாண்டி12, ஜெயப்பாண்டி",
      "sInitial": "",
      "sNameAndProfession": "நிஷாந்தி ஜெயராம் மகள், நிஷாந்தி ஜெயராம் மகள்",
      "pPhoneNumber": "",
      "cashAmt": 1000,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a527d410-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "94",
      "attendeeEntryId": "20610970-0728-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "20610970-0728-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 2,
        "totalAmt": 1000
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 02:00:44.167"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "0aa97f40-0728-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "அம்பட்டையம்பட்டி",
      "residentialAddress": "",
      "pInitial": "",
      "pNameAndProfession": "ஜெயப்பாண்டி12, ஜெயப்பாண்டி",
      "sInitial": "",
      "sNameAndProfession": "நிஷாந்தி ஜெயராம் மகள், நிஷாந்தி ஜெயராம் மகள்",
      "pPhoneNumber": "",
      "cashAmt": 5000,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a527d410-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "94",
      "attendeeEntryId": "11804a60-0728-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "11804a60-0728-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 8,
        "totalAmt": 4000
      },
      {
        "amt": 200,
        "count": 5,
        "totalAmt": 1000
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 02:00:19.206"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "f3592ca0-0727-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "உசிலம்பட்டி, நேதாஜிநகர்",
      "residentialAddress": "உசிலம்பட்டி, நேதாஜிநகர்",
      "pInitial": "p",
      "pNameAndProfession": "பாண்டியன், பாண்டியன்ஸ்டோர்",
      "sInitial": "",
      "sNameAndProfession": "கண்ணகி",
      "pPhoneNumber": "",
      "cashAmt": 1000,
      "gPayAmt": 1000,
      "paidInAdvanceAmt": 5000,
      "isCashPayment": true,
      "isGpayPayment": true,
      "isPaidInAdvancePayment": true,
      "isUncle": true,
      "notes": "",
      "personId": "05dd1ba0-01ad-11ed-94aa-d544e71a0f68",
      "localDbPersonRecId": "77",
      "attendeeEntryId": "fdcc7f70-0727-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "fdcc7f70-0727-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 2,
        "totalAmt": 1000
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:59:46.151"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "d9c0bec0-0727-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கீழக்குயில்குடி",
      "residentialAddress": "",
      "pInitial": "SR",
      "pNameAndProfession": "செல்லக்கண்ணு, ex ஊராட்சி மன்ற துணை தலைவர்",
      "sInitial": "",
      "sNameAndProfession": "",
      "pPhoneNumber": "",
      "cashAmt": 1000,
      "gPayAmt": 500,
      "paidInAdvanceAmt": 500,
      "isCashPayment": true,
      "isGpayPayment": true,
      "isPaidInAdvancePayment": true,
      "notes": "",
      "personId": "a5284953-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "235",
      "attendeeEntryId": "df0d6770-0727-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "df0d6770-0727-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 10,
        "count": 100,
        "totalAmt": 1000
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:58:54.567"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "c3caa4f0-0727-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கீழக்குயில்குடி",
      "residentialAddress": "",
      "pInitial": "",
      "pNameAndProfession": "அன்பு என்ற விருமாண்டி மகன் சிட்டிபாபு, tnstc",
      "sInitial": "",
      "sNameAndProfession": "",
      "pPhoneNumber": "",
      "cashAmt": 200,
      "gPayAmt": 2000,
      "paidInAdvanceAmt": 100,
      "isCashPayment": true,
      "isGpayPayment": true,
      "isPaidInAdvancePayment": true,
      "notes": "",
      "personId": "a5282258-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "180",
      "attendeeEntryId": "c97d3b60-0727-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "c97d3b60-0727-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 200,
        "count": 1,
        "totalAmt": 200
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:58:18.390"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "ab03b7e0-0727-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கீழக்குயில்குடி, சீனிவாசாகாலனி",
      "residentialAddress": "",
      "pInitial": "S",
      "pNameAndProfession": "செந்தில்குமார், பலசரக்கு கடை",
      "sInitial": "",
      "sNameAndProfession": "",
      "pPhoneNumber": "",
      "cashAmt": 100,
      "gPayAmt": 1000,
      "paidInAdvanceAmt": 5000,
      "isCashPayment": true,
      "isGpayPayment": true,
      "isPaidInAdvancePayment": true,
      "notes": "",
      "personId": "a5284950-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "232",
      "attendeeEntryId": "b0e99350-0727-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "b0e99350-0727-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 100,
        "count": 1,
        "totalAmt": 100
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:57:37.157"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "8f5dc6c0-0727-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கீழக்குயில்குடி",
      "residentialAddress": "",
      "pInitial": "K",
      "pNameAndProfession": "வயக்காட்டுசாமி, தீயணைப்புத்துறை",
      "sInitial": "",
      "sNameAndProfession": "",
      "pPhoneNumber": "",
      "cashAmt": 1000,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a528706f-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "325",
      "attendeeEntryId": "933c1260-0727-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "933c1260-0727-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 2,
        "totalAmt": 1000
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:56:47.367"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "6ddf40a0-0727-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கண்மாய்கரை",
      "residentialAddress": "",
      "pInitial": "",
      "pNameAndProfession": "தேவர் மகன் சுபாஷ், SBI BANK",
      "sInitial": "",
      "sNameAndProfession": "",
      "pPhoneNumber": "",
      "cashAmt": 1555,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a528223e-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "154",
      "attendeeEntryId": "7f267860-0727-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "7f267860-0727-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 2,
        "totalAmt": 1000
      },
      {
        "amt": 200,
        "count": 5,
        "totalAmt": 1000
      },
      {
        "amt": 50,
        "count": 1,
        "totalAmt": 50
      }
    ],
    "refundAmtDenominationList": [
      {
        "amt": 100,
        "count": 4,
        "totalAmt": 400
      },
      {
        "amt": 10,
        "count": 9,
        "totalAmt": 90
      },
      {
        "amt": 1,
        "count": 5,
        "totalAmt": 5
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:56:13.670"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "57099c40-0727-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கீழக்குயில்குடி",
      "residentialAddress": "",
      "pInitial": "SR",
      "pNameAndProfession": "செல்லக்கண்ணு, ex ஊராட்சி மன்ற துணை தலைவர்",
      "sInitial": "",
      "sNameAndProfession": "",
      "pPhoneNumber": "",
      "cashAmt": 2000,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a5284953-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "235",
      "attendeeEntryId": "5ed21a60-0727-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "5ed21a60-0727-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 100,
        "count": 20,
        "totalAmt": 2000
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:55:19.430"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "44059950-0727-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கீழக்குயில்குடி",
      "residentialAddress": "",
      "pInitial": "L",
      "pNameAndProfession": "கண்ணன் மகன் சரவணன், BSNL",
      "sInitial": "",
      "sNameAndProfession": "",
      "pPhoneNumber": "",
      "cashAmt": 100,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a5282267-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "195",
      "attendeeEntryId": "4861a070-0727-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "4861a070-0727-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 10,
        "count": 10,
        "totalAmt": 100
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:54:41.783"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "27977630-0727-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "திண்டுக்கல், கொடைக்கானல்",
      "residentialAddress": "மதுரை, பல்கலைநகர்",
      "pInitial": "kt",
      "pNameAndProfession": "முத்து, bsc",
      "sInitial": "m",
      "sNameAndProfession": "கண்ணன், mku",
      "pPhoneNumber": "6369672318",
      "cashAmt": 1000,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "5பவுன் ஜெயின்,அரிசி சிப்பம் 5, தட்டு 25",
      "personId": "a2cad6e0-01a4-11ed-94aa-d544e71a0f68",
      "localDbPersonRecId": "93",
      "attendeeEntryId": "318f3060-0727-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "318f3060-0727-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 2,
        "totalAmt": 1000
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:54:03.495"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "fd911990-0726-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "அய்யனார்புரம்",
      "residentialAddress": "",
      "pInitial": "A",
      "pNameAndProfession": "சிவபாலன், சிவா லாரி சர்வீஸ்",
      "sInitial": "",
      "sNameAndProfession": "",
      "pPhoneNumber": "9842121230",
      "cashAmt": 2001,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a527fb2b-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "106",
      "attendeeEntryId": "04f75370-0727-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "04f75370-0727-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 4,
        "totalAmt": 2000
      },
      {
        "amt": 1,
        "count": 1,
        "totalAmt": 1
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:52:48.679"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "cbb9b350-0726-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "அம்பட்டையம்பட்டி",
      "residentialAddress": "",
      "pInitial": "",
      "pNameAndProfession": "ஜெயப்பாண்டி12, ஜெயப்பாண்டி",
      "sInitial": "",
      "sNameAndProfession": "நிஷாந்தி ஜெயராம் மகள், நிஷாந்தி ஜெயராம் மகள்",
      "pPhoneNumber": "",
      "cashAmt": 10001,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a527d410-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "94",
      "attendeeEntryId": "e07f6370-0726-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "e07f6370-0726-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 20,
        "totalAmt": 10000
      },
      {
        "amt": 1,
        "count": 1,
        "totalAmt": 1
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:51:47.495"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "a052dc50-0726-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "ஆலம்பட்டி",
      "residentialAddress": "",
      "pInitial": "T",
      "pNameAndProfession": "குபேந்திரராஜா, RPF",
      "sInitial": "",
      "sNameAndProfession": "அமுதா ஆசிரியர்",
      "pPhoneNumber": "",
      "cashAmt": 1010,
      "gPayAmt": 551,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "isGpayPayment": true,
      "notes": "",
      "personId": "a527fb49-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "136",
      "attendeeEntryId": "aca54f60-0726-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "aca54f60-0726-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 2,
        "totalAmt": 1000
      },
      {
        "amt": 10,
        "count": 1,
        "totalAmt": 10
      },
      {
        "amt": 1,
        "count": 1,
        "totalAmt": 1
      }
    ],
    "refundAmtDenominationList": [
      {
        "amt": 1,
        "count": 1,
        "totalAmt": 1
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:50:20.505"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "7c71ae10-0726-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "NGO காலனி, அய்யனார்நகர்",
      "residentialAddress": "",
      "pInitial": "J",
      "pNameAndProfession": "ஜெயபிரகாஷ்",
      "sInitial": "",
      "sNameAndProfession": "சிவரஞ்சனி",
      "pPhoneNumber": "6382333629",
      "cashAmt": 8000,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a5282247-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "163",
      "attendeeEntryId": "8da6bd60-0726-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "8da6bd60-0726-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 2000,
        "count": 1,
        "totalAmt": 2000
      },
      {
        "amt": 500,
        "count": 6,
        "totalAmt": 3000
      },
      {
        "amt": 200,
        "count": 10,
        "totalAmt": 2000
      },
      {
        "amt": 50,
        "count": 10,
        "totalAmt": 500
      },
      {
        "amt": 10,
        "count": 50,
        "totalAmt": 500
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:49:28.502"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "6d850820-0726-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கடமலைக்குண்டு",
      "residentialAddress": "",
      "pInitial": "P",
      "pNameAndProfession": "ஜெயபிரகாஷ், sbi bank",
      "sInitial": "",
      "sNameAndProfession": "விஜியலட்சுமி",
      "pPhoneNumber": "",
      "cashAmt": 0,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 100,
      "isPaidInAdvancePayment": true,
      "notes": "",
      "personId": "a5282238-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "148",
      "attendeeEntryId": "717e07b0-0726-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "717e07b0-0726-11ed-a6cf-3f8a8ae5b636",
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:48:41.259"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "52f0d520-0726-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கன்னியம்பட்டி P",
      "residentialAddress": "",
      "pInitial": "C",
      "pNameAndProfession": "கற்பகராஜா, காய்கறி கடை",
      "sInitial": "",
      "sNameAndProfession": "மீனா",
      "pPhoneNumber": "9361157089",
      "cashAmt": 15001,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a5282245-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "161",
      "attendeeEntryId": "5e71c760-0726-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "5e71c760-0726-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 35,
        "totalAmt": 17500
      },
      {
        "amt": 1,
        "count": 1,
        "totalAmt": 1
      }
    ],
    "refundAmtDenominationList": [
      {
        "amt": 500,
        "count": 5,
        "totalAmt": 2500
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:48:09.302"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "36e9b130-0726-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "அம்பட்டையம்பட்டி",
      "residentialAddress": "",
      "pInitial": "V",
      "pNameAndProfession": "விஜயதெய்வம், மீன் மார்கெட்",
      "sInitial": "",
      "sNameAndProfession": "வீரலட்சுமி",
      "pPhoneNumber": "",
      "cashAmt": 1000,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a527fb22-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "97",
      "attendeeEntryId": "41a72c60-0726-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "41a72c60-0726-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 100,
        "count": 5,
        "totalAmt": 500
      },
      {
        "amt": 20,
        "count": 5,
        "totalAmt": 100
      },
      {
        "amt": 10,
        "count": 40,
        "totalAmt": 400
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:47:20.999"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "1ccfde50-0726-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கடமலைக்குண்டு",
      "residentialAddress": "",
      "pInitial": "P",
      "pNameAndProfession": "சதீஷ்குமார், TNEB டிரஸ் கு 2000",
      "sInitial": "",
      "sNameAndProfession": "சரண்யா",
      "pPhoneNumber": "8903186343",
      "cashAmt": 1000,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "a5282237-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "147",
      "attendeeEntryId": "22118a80-0726-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "22118a80-0726-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 10,
        "count": 100,
        "totalAmt": 1000
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:46:28.008"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "08be3bf0-0726-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "கீழக்குயில்குடி",
      "residentialAddress": "",
      "pInitial": "P",
      "pNameAndProfession": "ராஜா என்ற கலுவன், mku பால்த்துரை நகை அடகுக்கடை",
      "sInitial": "",
      "sNameAndProfession": "",
      "pPhoneNumber": "9597990402",
      "cashAmt": 500,
      "gPayAmt": 500,
      "paidInAdvanceAmt": 9000,
      "isCashPayment": true,
      "isGpayPayment": true,
      "isPaidInAdvancePayment": true,
      "notes": "",
      "personId": "a5287068-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "318",
      "attendeeEntryId": "0f0179a0-0726-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "0f0179a0-0726-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 1,
        "totalAmt": 500
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:45:56.027"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "f3e3cb50-0725-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "திண்டுக்கல், கொடைக்கானல்",
      "residentialAddress": "மதுரை, பல்கலைநகர்",
      "pInitial": "kt",
      "pNameAndProfession": "முத்து, bsc",
      "sInitial": "m",
      "sNameAndProfession": "கண்ணன், mku",
      "pPhoneNumber": "6369672318",
      "cashAmt": 0,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 10000,
      "isPaidInAdvancePayment": true,
      "isUncle": true,
      "notes": "",
      "personId": "a2cad6e0-01a4-11ed-94aa-d544e71a0f68",
      "localDbPersonRecId": "93",
      "attendeeEntryId": "f6f7c210-0725-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "f6f7c210-0725-11ed-a6cf-3f8a8ae5b636",
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:45:15.698"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "df769b70-0725-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "அழகுசுந்தரம் நகர்",
      "residentialAddress": "",
      "pInitial": "",
      "pNameAndProfession": "கருப்பச்சாமி, ஸ்ரீ கருப்பசாமி ஸ்டோர்",
      "sInitial": "",
      "sNameAndProfession": "",
      "pPhoneNumber": "",
      "cashAmt": 0,
      "gPayAmt": 10000,
      "paidInAdvanceAmt": 0,
      "isGpayPayment": true,
      "isUncle": true,
      "notes": "",
      "personId": "a527fb45-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "132",
      "attendeeEntryId": "e2382c70-0725-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "e2382c70-0725-11ed-a6cf-3f8a8ae5b636",
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:44:40.888"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "bbb418c0-0725-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "தேனி",
      "residentialAddress": "கருவேல்நாயக்கன்பட்டி",
      "pInitial": "",
      "pNameAndProfession": "ஜெயராஜ், ஆட்டோ உரிமை",
      "sInitial": "",
      "sNameAndProfession": "சிவமணி",
      "pPhoneNumber": "8825506864",
      "cashAmt": 50001,
      "gPayAmt": 50000,
      "paidInAdvanceAmt": 1001,
      "isCashPayment": true,
      "isGpayPayment": true,
      "isPaidInAdvancePayment": true,
      "isUncle": true,
      "notes": "",
      "personId": "50a6c5b0-0413-11ed-a25c-cb0257f80641",
      "localDbPersonRecId": "83",
      "attendeeEntryId": "c2f5b3a0-0725-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "c2f5b3a0-0725-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 100,
        "totalAmt": 50000
      },
      {
        "amt": 1,
        "count": 1,
        "totalAmt": 1
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:43:48.443"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "997799d0-0725-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "தேனி",
      "residentialAddress": "க விலக்கு",
      "pInitial": "p",
      "pNameAndProfession": "சிவனாண்டித்தேவர், பைனான்சியர்",
      "sInitial": "சி",
      "sNameAndProfession": "தேனம்மாள், நர்ஸ்",
      "pPhoneNumber": "7894566655",
      "cashAmt": 250,
      "gPayAmt": 1000,
      "paidInAdvanceAmt": 550,
      "isCashPayment": true,
      "isGpayPayment": true,
      "isPaidInAdvancePayment": true,
      "notes": "",
      "personId": "350610a0-01e2-11ed-827f-f35359c976b4",
      "localDbPersonRecId": "81",
      "attendeeEntryId": "9f3e2d70-0725-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "9f3e2d70-0725-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 50,
        "count": 5,
        "totalAmt": 250
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:42:48.520"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "7db287f0-0725-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "உசிலம்பட்டி, நேதாஜிநகர்",
      "residentialAddress": "உசிலம்பட்டி, நேதாஜிநகர்",
      "pInitial": "p",
      "pNameAndProfession": "பாண்டியன், பாண்டியன்ஸ்டோர்",
      "sInitial": "",
      "sNameAndProfession": "கண்ணகி",
      "pPhoneNumber": "",
      "cashAmt": 500,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "notes": "",
      "personId": "05dd1ba0-01ad-11ed-94aa-d544e71a0f68",
      "localDbPersonRecId": "77",
      "attendeeEntryId": "83826a60-0725-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "83826a60-0725-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 100,
        "count": 5,
        "totalAmt": 500
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:42:01.990"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "5a767350-0725-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "மதுரை",
      "residentialAddress": "வாழசமுத்திரப்பட்டி",
      "pInitial": "M",
      "pNameAndProfession": "சிவராமகிருஷ்ணன், கவின் புரௌசிங் சென்டா்",
      "sInitial": "P",
      "sNameAndProfession": "பேச்சி",
      "pPhoneNumber": "9043606296",
      "cashAmt": 5000,
      "gPayAmt": 5000,
      "paidInAdvanceAmt": 90000,
      "isCashPayment": true,
      "isGpayPayment": true,
      "isPaidInAdvancePayment": true,
      "isUncle": true,
      "notes": "2 பவுன் செயின், கிடாவுக்கு ரூ 10000, தட்டு-15.அரிசி சிப்பம்-10, வாழைத்தார்-5",
      "personId": "1cec49f0-01d6-11ed-9ef0-1f25f63e0d87",
      "localDbPersonRecId": "80",
      "attendeeEntryId": "70ae02f0-0725-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "70ae02f0-0725-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 2,
        "totalAmt": 1000
      },
      {
        "amt": 200,
        "count": 2,
        "totalAmt": 400
      },
      {
        "amt": 100,
        "count": 36,
        "totalAmt": 3600
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:41:30.399"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "0f031cc0-0725-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "அய்யனார்புரம்",
      "residentialAddress": "",
      "pInitial": "A",
      "pNameAndProfession": "ராஜு மகன் சுமன், PROFESSOR",
      "sInitial": "",
      "sNameAndProfession": "",
      "pPhoneNumber": "",
      "cashAmt": 2000,
      "gPayAmt": 0,
      "paidInAdvanceAmt": 8000,
      "isCashPayment": true,
      "isPaidInAdvancePayment": true,
      "notes": "",
      "personId": "a527fb34-eea8-11ec-af99-47bba4a2ad21",
      "localDbPersonRecId": "115",
      "attendeeEntryId": "13062e70-0725-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "13062e70-0725-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 4,
        "totalAmt": 2000
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:38:53.271"
    }
  },
  {
    "attendeeDataModel": {
      "attendeeId": "fb4ae500-0724-11ed-a6cf-3f8a8ae5b636",
      "homeAddress": "திண்டுக்கல், கொடைக்கானல்",
      "residentialAddress": "மதுரை, பல்கலைநகர்",
      "pInitial": "kt",
      "pNameAndProfession": "முத்து, bsc",
      "sInitial": "m",
      "sNameAndProfession": "கண்ணன், mku",
      "pPhoneNumber": "6369672318",
      "cashAmt": 1000,
      "gPayAmt": 500,
      "paidInAdvanceAmt": 0,
      "isCashPayment": true,
      "isGpayPayment": true,
      "notes": "",
      "personId": "a2cad6e0-01a4-11ed-94aa-d544e71a0f68",
      "localDbPersonRecId": "93",
      "attendeeEntryId": "01a6dad0-0725-11ed-a6cf-3f8a8ae5b636",
      "attendeeStatus": "Active",
      "attendeeUpdatedNotes": ""
    },
    "hasPendingWrites": false,
    "isGroupEntry": false,
    "eventDocId": "XuSCGplWLjvAHGTISjDC",
    "eventAttendeeEntryId": "01a6dad0-0725-11ed-a6cf-3f8a8ae5b636",
    "receivedAmtDenominationList": [
      {
        "amt": 500,
        "count": 2,
        "totalAmt": 1000
      }
    ],
    "audit": {
      "createdBy": "sivaguru",
      "createdUserId": "mVSZRdOQhSP0WCWkZOvNeZISqAb2",
      "createdProcess": "EventAttendeeRegistration",
      "createdAt": "2022-07-19 01:38:24.127"
    }
  }
]}
    ''';

    return str;
  }
}
