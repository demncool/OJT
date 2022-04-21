// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(19, 22, 40, 1),
        title: Row(
          children: [
            Image.asset(
              "assets/images/hogLogo.jpg",
              height: 50,
            ),
            const Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
          ],
        ),
      ),
      body: EventBody(),
    );
  }
}

class EventBody extends StatefulWidget {
  const EventBody({Key? key}) : super(key: key);

  @override
  State<EventBody> createState() => _EventBodyState();
}

class _EventBodyState extends State<EventBody> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(31, 33, 35, 1),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(24, 26, 27, 1),
              ),
              child: Row(
                children: [
                  Text(
                    "List Of Events ",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Color.fromRGBO(209, 205, 199, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "  Events ",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Color.fromRGBO(209, 205, 199, 1),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
