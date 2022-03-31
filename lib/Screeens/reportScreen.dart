// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

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

class _ReportState extends State<Report> {
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
      body: ReportBody(),
    );
  }
}

class ReportBody extends StatefulWidget {
  const ReportBody({Key? key}) : super(key: key);

  @override
  State<ReportBody> createState() => _ReportBodyState();
}

class _ReportBodyState extends State<ReportBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(31, 33, 35, 1),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
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
                                )),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                ClipPath(
                  clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(140, 99, 6, 1),
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromARGB(255, 109, 117, 117),
                                width: 7.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Report",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Color.fromRGBO(186, 180, 171, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Hog Reports",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Color.fromRGBO(186, 180, 171, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                ClipPath(
                  clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                  ),
                  child: Container(
                    height: 550,
                    width: double.infinity,
                    color: Color.fromRGBO(24, 26, 27, 1),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(23, 50, 23, 23),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Report",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color.fromRGBO(186, 180, 171, 1),
                            ),
                          ),
                          DropdownButtonFormField<String>(
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
                            value: selected,
                            items: items
                                .map((items) => DropdownMenuItem<String>(
                                      value: items,
                                      child: Text(items),
                                    ))
                                .toList(),
                            onChanged: (items) => setState(
                              () => selected = items,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<String> items = [
  "Applicant Report",
  "Probi Report",
  "Member",
  "All Member",
  "Nearly Expired Member",
  "Event Report",
  "Registered Members",
  "Active Login Members"
];
String? selected;
