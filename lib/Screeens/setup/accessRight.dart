// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

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

class AccessRights extends StatefulWidget {
  const AccessRights({Key? key}) : super(key: key);

  @override
  State<AccessRights> createState() => _AccessRightsState();
}

class _AccessRightsState extends State<AccessRights> {
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
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            ),
            Text(
              "Setup ",
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Color.fromRGBO(209, 205, 199, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
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
            AccessRightBody(),
          ],
        ),
      ),
    );
  }
}

class AccessRightBody extends StatefulWidget {
  const AccessRightBody({Key? key}) : super(key: key);

  @override
  State<AccessRightBody> createState() => _AccessRightBodyState();
}

class _AccessRightBodyState extends State<AccessRightBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(24, 26, 27, 1),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          width: double.infinity,
          child: Column(
            children: [
              Text("dawdaw"),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(24, 26, 27, 1),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          width: double.infinity,
          child: Column(
            children: [
              Text("dawdaw"),
            ],
          ),
        ),
      ],
    );
  }
}
