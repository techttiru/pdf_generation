import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf_generation_paging_determination/adapt_string_tamil.dart';
import 'dart:typed_data';

import 'package:pdf_generation_paging_determination/utility_file.dart';

import 'supporting_files.dart/attendee_list_view_model.dart';

double currentHt = 0;

//double fontSize1 = 12.0, fontSize2 = 10.0, fontSize3 = 8.0, fontSize4 = 6.0;
double fontSize1 = 16.0, fontSize2 = 14.0, fontSize3 = 12.0, fontSize4 = 10.0;

Future<Uint8List> generatePdf(
    List<AttendeeListViewModel> attendeeListViewModelList) async {
  final pdf = Document();
  // print('[');
  // for (var element in attendeeListViewModelList) {
  //   print('${element.toJson()},');
  // }
  // print(']');
  // Document.debug = true;
  String path = 'assets/custom_MuktaMalar.ttf';
  Font? tamilFont = Font.ttf(await rootBundle.load(path));

  attendeeListViewModelList.sort(
    (a, b) => a.attendeeDataModel!.homeAddress!
        .compareTo(b.attendeeDataModel!.homeAddress!),
  );
  final mapList = attendeeListViewModelList.asMap();

  String currentHomeAddress = '';

  //'NGO காலனி, அய்யனார்நகர்';

  //int pageNumber = 1;

  var ht = PdfPageFormat.a4.availableHeight;
  var wt = PdfPageFormat.a4.availableWidth;
  currentHt = ht;
  print('current height first time - $currentHt');

  pdf.addPage(
    MultiPage(
      pageTheme: PageTheme(
        // pageFormat: PdfPageFormat.a4.copyWith(
        //     marginTop: 0, marginBottom: 0, marginLeft: 0, marginRight: 0),
        pageFormat: PdfPageFormat.a4,
        //  pageFormat: PdfPageFormat.roll80,
        theme: ThemeData(
            defaultTextStyle: TextStyle(font: tamilFont, fontBold: tamilFont)),
      ),
      header: (context) {
        // print(
        //     'inside header - ${context.pageNumber}, - ${context.pageLabel}, -  ${context.pagesCount}');
        //   pageNumber = context.pageNumber;

        return createHeaderDisplayRow();
      },
      footer: (context) {
        // context.page.contents.forEach(
        //   (element) {
        //     element.pdfDocument.objects.forEach((element) {
        //       print('inside');
        //     //  print(element);
        //     });
        //     element.params.values.entries.forEach((element) {
        //       print('inside');
        //       print(element);
        //     });
        // final f1 = element.buf.output();
        // final f2 = f1;
        // Uint8List bytes = Uint8List.fromList(f1);
        // final str = String.fromCharCodes(bytes);
        // print(str);

        //   element.ref().toList().forEach((element) { })
        //  },
        // );
        // print(context.document.
        // print(
        //     'inside footer - ${context.pageNumber}, - ${context.pageLabel}, -  ${context.pagesCount}');
        // pageNumber = context.pageNumber;
        // context.page.contents.
        //final PdfObjectStream
        return createFooterDisplayRow(context.pageNumber, context.pagesCount);
      },
      build: (context) {
        print('inside build');
        // print(context.page.pageFormat.availableHeight);

        bool firstRow = true;
        return [
          Table(
            columnWidths: {
              0: const FlexColumnWidth(10),
              1: const FlexColumnWidth(100),
              2: const FlexColumnWidth(100),
              3: const FlexColumnWidth(100),
            },
            children: [
              // TableRow(repeat: true, children: [
              //   createHomeAddressRow(currentHomeAddress),
              // ]),
              ...mapList.entries.map((mapEntry) {
                //      i = i + 1;
                //  print(mapEntry.value.attendeeDataModel?.homeAddress);
                // print('inside loop -  $pageNumber');
                if (firstRow) {
                  currentHomeAddress =
                      mapEntry.value.attendeeDataModel?.homeAddress ?? '';
                  firstRow = false;
                  return createHeaderTableRowForDetailPage(mapEntry);
                  // createHomeAddressRow(
                  //     mapEntry.value.attendeeDataModel?.homeAddress ??
                  //         ''),

                } else {
                  if (currentHomeAddress !=
                      mapEntry.value.attendeeDataModel?.homeAddress) {
                    currentHomeAddress =
                        mapEntry.value.attendeeDataModel?.homeAddress ?? '';
                    return createHeaderTableRowForDetailPage(mapEntry);
                  }

                  return buildEachRow(mapEntry, currentHt);
                }
              }).toList(),
            ],
          ),
        ];
        //  print('end');
      },
    ),
  );

  // pdf.addPage(Page(build: (context) => Text('Hello')), index: 0);

  return pdf.save();
}

TableRow buildEachRow(
    MapEntry<int, AttendeeListViewModel> mapEntry, double currentHt) {
  return TableRow(
      //repeat: true,
      children: [
        createDetailDisplayRow(mapEntry, currentHt),
      ]);
}

Widget createDetailDisplayRow(
    MapEntry<int, AttendeeListViewModel> mapEntry, double currentHt1) {
  var attendeeDataModel = mapEntry.value.attendeeDataModel!;
  var person = UtilityFunction.convertAttendeeModelToPerson(attendeeDataModel);

  //* build the name string.
  final pProfession =
      (person.pProfession != null && person.pProfession!.isNotEmpty)
          ? ' ${person.pProfession}'
          : '';

  final sProfession =
      (person.sProfession != null && person.sProfession!.isNotEmpty)
          ? ' ${person.sProfession}'
          : '';

  String secondarName = UtilityFunction.concatinateSNames(person);
  secondarName = secondarName.isNotEmpty ? ' - $secondarName' : '';

  String residentialAddress = (attendeeDataModel.residentialAddress != null &&
          attendeeDataModel.residentialAddress!.isNotEmpty)
      ? ', ${attendeeDataModel.residentialAddress}'
      : '';

  // String homeAddressTemp = (attendeeDataModel.homeAddress != null &&
  //         attendeeDataModel.homeAddress!.isNotEmpty)
  //     ? ', ${attendeeDataModel.homeAddress}'
  //     : '';

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 33,
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text((mapEntry.key + 1).toString(),
                style: TextStyle(fontSize: fontSize1, lineSpacing: 0.0)),
          ),
          Container(
            width: 330,
            padding: const EdgeInsets.symmetric(horizontal: 4),
            // color: PdfColors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: UtilityFunction.concatinatePNames(person).toPrintPdf,
                    style: TextStyle(fontSize: fontSize1, lineSpacing: 0.0),
                    children: [
                      TextSpan(
                          text: pProfession.toPrintPdf,
                          style: TextStyle(
                              fontSize: fontSize3,
                              color: PdfColors.red,
                              lineSpacing: 0.0)),
                      TextSpan(
                          text: secondarName.toPrintPdf,
                          style: TextStyle(
                              fontSize: fontSize1,
                              color: PdfColors.blue,
                              lineSpacing: 0.0)),
                      TextSpan(
                          text: sProfession.toPrintPdf,
                          style: TextStyle(
                              fontSize: fontSize3, color: PdfColors.red)),
                      TextSpan(
                          text: residentialAddress.toPrintPdf,
                          style: TextStyle(
                              fontSize: fontSize3, color: PdfColors.green900)),
                      // TextSpan(
                      //     text: homeAddressTemp.toPrintPdf,
                      //     style: TextStyle(
                      //         fontSize: fontSize3, color: PdfColors.pink))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 65,
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
                UtilityFunction.convertToCurrencyWithSymbol(
                  (mapEntry.value.attendeeDataModel?.cashAmt ?? 0),
                ),
                style: TextStyle(fontSize: fontSize1)),
          ),
          Container(
            width: 35,
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(''),
          ),
        ],
      ),
      Divider(color: PdfColors.grey400, height: 4),
    ],
  );
}

TableRow createHeaderTableRowForDetailPage(
    MapEntry<int, AttendeeListViewModel> mapEntry) {
  return TableRow(
    // repeat: true,
    children: [
      // Divider(height: 100),
      Column(
        children: [
          SizedBox(height: 30),
          // createHeaderDisplayRow(),
          createHomeAddressRow(
              mapEntry.value.attendeeDataModel?.homeAddress ?? ''),
          createDetailDisplayRow(mapEntry, 0),
        ],
      ),
    ],
  );
}

Widget createHeaderDisplayRow() {
  return Container(
    color: PdfColors.grey900,
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 33,
          // decoration: BoxDecoration(
          //   border: Border.all(),
          //   color: PdfColors.grey300,
          // ),
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text('Sl.No', style: const TextStyle(color: PdfColors.white)),
        ),
        // VerticalDivider(),
        Container(
          width: 330,
          // decoration: BoxDecoration(
          //     border: Border.all(), color: PdfColors.grey300),
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text('Name', style: const TextStyle(color: PdfColors.white)),
        ),
        // VerticalDivider(),
        Container(
          width: 65,
          // decoration: BoxDecoration(
          //     border: Border.all(), color: PdfColors.grey300),
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text('Amt', style: const TextStyle(color: PdfColors.white)),
        ),
        Container(
          width: 35,
          // decoration: BoxDecoration(
          //     border: Border.all(), color: PdfColors.grey300),
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text('Pamt', style: const TextStyle(color: PdfColors.white)),
        ),
      ],
    ),
  );
}

Widget createFooterDisplayRow(int pageNumber, int pagesCount) {
  return Container(
    color: PdfColors.yellow900,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 35,
          // decoration: BoxDecoration(
          //     border: Border.all(), color: PdfColors.grey300),
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(' $pageNumber / $pagesCount',
              style: const TextStyle(color: PdfColors.white)),
        ),
      ],
    ),
  );
}

Widget createHomeAddressRow(String homeAddress) {
  return Container(
    // color: PdfColors.pink900,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(homeAddress.toPrintPdf,
                style: TextStyle(
                    color: PdfColors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline))
          ],
        ),
        SizedBox(height: 10),
      ],
    ),
  );
}
