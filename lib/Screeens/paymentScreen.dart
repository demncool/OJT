// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List months = [
  'January ',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];
var now = DateTime.now();
var current_mon = now.month;
var currentDate = now.day;

List<String> reportItems = ["Registration", "Renewal"];
String? selectedReport;

List<String> yearItems = ["2018", "2019", "2020", "2021", "2022"];
String? selectedYear;

class ProofOfPayment extends StatefulWidget {
  const ProofOfPayment({Key? key}) : super(key: key);

  @override
  State<ProofOfPayment> createState() => _ProofOfPaymentState();
}

class _ProofOfPaymentState extends State<ProofOfPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(19, 22, 40, 1),
        title: Row(
          children: [
            Image.asset(
              "assets/images/hogLogo.jpg",
              height: 50,
              // fit: BoxFit.scaleDown,
            ),
            Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
            Text(""),
          ],
        ),
      ),
      body: ProofOfPaymentBody(),
    );
  }
}

class ProofOfPaymentBody extends StatefulWidget {
  const ProofOfPaymentBody({Key? key}) : super(key: key);

  @override
  State<ProofOfPaymentBody> createState() => _ProofOfPaymentBodyState();
}

class _ProofOfPaymentBodyState extends State<ProofOfPaymentBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(31, 33, 35, 1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(24, 26, 27, 1),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            width: double.infinity,
            child: SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Today: ",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                      ),
                      children: [
                        TextSpan(
                          text: months[current_mon - 1].toString() +
                              " " +
                              currentDate.toString(),
                          style: GoogleFonts.poppins(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(8),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color.fromARGB(255, 22, 24, 26),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Create",
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(22, 158, 151, 1))),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Report",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color.fromRGBO(186, 180, 171, 1),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: SizedBox(
                              child: DropdownButtonFormField<String>(
                                style: TextStyle(
                                    color: Color.fromARGB(255, 224, 218, 218),
                                    fontSize: 13),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Color.fromARGB(255, 31, 79, 117),
                                    ),
                                  ),
                                ),
                                dropdownColor: Color.fromRGBO(24, 26, 27, 1),
                                hint: Text(
                                  "Select",
                                  style: GoogleFonts.poppins(
                                    color: Color.fromRGBO(186, 180, 171, 1),
                                    fontSize: 12,
                                  ),
                                ),
                                value: selectedReport,
                                items: reportItems
                                    .map((reportItems) =>
                                        DropdownMenuItem<String>(
                                          value: reportItems,
                                          child: Text(reportItems),
                                        ))
                                    .toList(),
                                onChanged: (reportItems) => setState(
                                  () => selectedReport = reportItems,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Year",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color.fromRGBO(186, 180, 171, 1),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: SizedBox(
                              child: DropdownButtonFormField<String>(
                                style: TextStyle(
                                    color: Color.fromARGB(255, 224, 218, 218),
                                    fontSize: 12),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Color.fromARGB(
                                              255, 31, 79, 117))),
                                ),
                                dropdownColor: Color.fromRGBO(24, 26, 27, 1),
                                hint: Text(
                                  "Select",
                                  style: GoogleFonts.poppins(
                                    color: Color.fromRGBO(186, 180, 171, 1),
                                    fontSize: 12,
                                  ),
                                ),
                                value: selectedYear,
                                items: yearItems
                                    .map(
                                        (yearItems) => DropdownMenuItem<String>(
                                              value: yearItems,
                                              child: Text(yearItems),
                                            ))
                                    .toList(),
                                onChanged: (yearItems) => setState(
                                  () => selectedYear = yearItems,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Text("Search"),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.blue[900]),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Proof Of Payment",
                                style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(186, 180, 171, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          PaymentTable(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

Widget PaymentTable(BuildContext context) {
  return Container(
    height: 500,
    child: Material(
      child: ListView(shrinkWrap: true, children: <Widget>[
        Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingRowColor: MaterialStateColor.resolveWith(
                  (states) => Color.fromRGBO(140, 99, 6, 1)),
              dataRowColor: MaterialStateColor.resolveWith(
                  (states) => Color.fromRGBO(24, 26, 27, 1)),
              columns: [
                DataColumn(
                    label: Text('#',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(186, 180, 171, 1)))),
                DataColumn(
                    label: Text('Full Name',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(186, 180, 171, 1)))),
                DataColumn(
                    label: Text('Date of Payment',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(186, 180, 171, 1)))),
                DataColumn(
                    label: Text('Type of Payment',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(186, 180, 171, 1)))),
                DataColumn(
                    label: Text('Amount',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(186, 180, 171, 1)))),
                DataColumn(
                    label: Text('Attachment',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(186, 180, 171, 1)))),
                DataColumn(
                    label: Text('Action',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(186, 180, 171, 1)))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('dwa')),
                  DataCell(Text('dawda')),
                  DataCell(Text('dawdaw')),
                  DataCell(Text('awdaw')),
                  DataCell(Text('awd')),
                  DataCell(Text('dawdwa')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Text('dawdaw')),
                  DataCell(Text('dawdaw')),
                  DataCell(Text('daw')),
                  DataCell(Text('awdaw')),
                  DataCell(Text('daw')),
                  DataCell(Text('dawdaw')),
                ]),
                DataRow(cells: [
                  DataCell(Text('10')),
                  DataCell(Text('daw')),
                  DataCell(Text('daw')),
                  DataCell(Text('daw')),
                  DataCell(Text('Acdawtor')),
                  DataCell(Text('dawdwa')),
                  DataCell(Text('daw')),
                ]),
                DataRow(cells: [
                  DataCell(Text('15')),
                  DataCell(Text('daw')),
                  DataCell(Text('daw')),
                  DataCell(Text('dawdaw')),
                  DataCell(Text('dawda')),
                  DataCell(Text('dawdwa')),
                  DataCell(Text('dwadaw')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Text('dawda')),
                  DataCell(Text('dwadwa')),
                  DataCell(Text('dawd')),
                  DataCell(Text('dawda')),
                  DataCell(Text('daw')),
                  DataCell(Text('dawdwad')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Text('dawd')),
                  DataCell(Text('dawdaw')),
                  DataCell(Text('dawdwa')),
                  DataCell(Text('dwadaw')),
                  DataCell(Text('dawdaw')),
                  DataCell(Text('wadaw')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Text('dawdwa')),
                  DataCell(Text('dawdaw')),
                  DataCell(Text('dawdaw')),
                  DataCell(Text('awdawdaw')),
                  DataCell(Text('dawdaw')),
                  DataCell(Text('dawdaw')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Text('Jodawdwaddahn')),
                  DataCell(Text('dawdwadwa')),
                  DataCell(Text('adwaa')),
                  DataCell(Text('dawdwa')),
                  DataCell(Text('dawda')),
                  DataCell(Text('dawdawdwa')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Text('dawdwa')),
                  DataCell(Text('dwad')),
                  DataCell(Text('dwa')),
                  DataCell(Text('dawdaw')),
                  DataCell(Text('daw')),
                  DataCell(Text('dwa')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Text('dwadwa')),
                  DataCell(Text('daw')),
                  DataCell(Text('dawdwa')),
                  DataCell(Text('daw')),
                  DataCell(Text('daw')),
                  DataCell(Text('dwa')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Text('dwadwa')),
                  DataCell(Text('daw')),
                  DataCell(Text('dawdwa')),
                  DataCell(Text('daw')),
                  DataCell(Text('daw')),
                  DataCell(Text('dwa')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Text('dwadwa')),
                  DataCell(Text('daw')),
                  DataCell(Text('dawdwa')),
                  DataCell(Text('daw')),
                  DataCell(Text('daw')),
                  DataCell(Text('dwa')),
                ]),
              ],
            ),
          ),
        )
      ]),
    ),
  );
}
