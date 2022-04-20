// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Announcement extends StatelessWidget {
  const Announcement({Key? key}) : super(key: key);

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
        body: Body());
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
                  AddAnnouncementBtn(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: AnnouncementBody(),
            ),
          ],
        ),
      ),
    );
  }
}

class AddAnnouncementBtn extends StatefulWidget {
  const AddAnnouncementBtn({Key? key}) : super(key: key);

  @override
  State<AddAnnouncementBtn> createState() => _AddAnnouncementBtnState();
}

class _AddAnnouncementBtnState extends State<AddAnnouncementBtn> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color.fromRGBO(31, 33, 35, 1),
      ),
      child: Text(
        "Add Announcement",
        style: GoogleFonts.poppins(
          color: Color.fromRGBO(63, 169, 255, 1),
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {},
    );
  }
}

class AnnouncementBody extends StatelessWidget {
  const AnnouncementBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    "Announcement",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Color.fromRGBO(209, 205, 199, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Announcement Members",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Color.fromRGBO(209, 205, 199, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
            width: double.infinity,
            color: Color.fromRGBO(24, 26, 27, 1),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(23, 50, 23, 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
