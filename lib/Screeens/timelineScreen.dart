// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, file_names

import 'package:application/Screeens/showdialogScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Timeline extends StatefulWidget {
  const Timeline({Key? key}) : super(key: key);

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
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
            Text("Timeline"),
          ],
        ),
      ),
      body: TimelineBody(),
    );
  }
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

class TimelineBody extends StatefulWidget {
  const TimelineBody({Key? key}) : super(key: key);

  @override
  State<TimelineBody> createState() => _TimelineBodyState();
}

class _TimelineBodyState extends State<TimelineBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(31, 33, 35, 1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromRGBO(24, 26, 27, 1),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 45,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "What's on your mind?",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Color.fromRGBO(209, 205, 199, 1)),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 1.0, color: Colors.lightBlue.shade900),
                        ),
                      ),
                      child: TextField(
                        autofocus: false,
                        onTap: () {
                          openDialog(context);
                        },
                        style: TextStyle(
                          color: Color.fromARGB(209, 205, 199, 1),
                        ),
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Type Message...',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(209, 205, 199, 1)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
