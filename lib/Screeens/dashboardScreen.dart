// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_adjacent_string_concatenation

import 'dart:ffi';

import 'package:application/Screeens/loginScreen.dart';
import 'package:application/Screeens/paymentScreen.dart';
import 'package:application/Screeens/reportScreen.dart';
import 'package:application/Screeens/timelineScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: GoogleFonts.poppins(),
        ),
        backgroundColor: Color.fromRGBO(19, 22, 40, 1),
        actions: [
          IconButton(icon: Icon(Icons.person), onPressed: () {}),
        ],
      ), //Color.fromRGBO(245, 178, 26, 1)
      //19, 22, 40, 1
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(245, 178, 26, 1),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: DrawerHeader(
                child: Padding(
                  padding: EdgeInsets.all(150),
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(19, 22, 40, 1),
                  image: DecorationImage(
                      image: AssetImage("assets/images/hogLogo.jpg")),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.timeline,
                color: Colors.white,
              ),
              title: Text('Timeline',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Timeline()))
              },
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                color: Colors.white,
              ),
              title: Text(
                'Proof of Payment',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProofOfPayment()))
              },
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: Colors.white,
              ),
              title: Text('Profile',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ExpansionTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Member',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                    ),
                    title: Text('Applicant',
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                    ),
                    title: Text('Applicant',
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                    ),
                    title: Text('Member',
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                    ),
                    title: Text('Disband',
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                    onTap: () {},
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                  ),
                  title: Text('Near Expiration',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                  onTap: () {},
                ),
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.report,
                color: Colors.white,
              ),
              title: Text('Reports',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onTap: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Report()))
              },
            ),
            ListTile(
              leading: Icon(
                Icons.event,
                color: Colors.white,
              ),
              title: Text('Event',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text('Setup',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              title: Text('Logout',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onTap: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()))
              },
            ),
          ],
        ),
      ),
      body: DashboardBody(),
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

class DashboardBody extends StatefulWidget {
  const DashboardBody({Key? key}) : super(key: key);

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(31, 33, 35, 1),
      child: ListView(
        padding: EdgeInsets.all(10),
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
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                height: 175,
                width: 190,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(24, 26, 27, 1),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Image.asset(
                        "assets/images/HOG QR.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Applying for HOG Riders",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color.fromRGBO(186, 180, 171, 1)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 175,
                width: 190,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(24, 26, 27, 1),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.people,
                          size: 50,
                          color: Color.fromRGBO(245, 178, 26, 1),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          "Probies: ",
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(186, 180, 171, 1),
                              fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Current Probies",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color.fromRGBO(186, 180, 171, 1),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          //2nd row--------------------------------------------------------------
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 175,
                width: 190,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(24, 26, 27, 1),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.people,
                          size: 50,
                          color: Color.fromRGBO(245, 178, 26, 1),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          "Members: ",
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(186, 180, 171, 1),
                              fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Curent member",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color.fromRGBO(186, 180, 171, 1),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 175,
                width: 190,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(24, 26, 27, 1),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.app_registration_sharp,
                          size: 50,
                          color: Color.fromRGBO(245, 178, 26, 1),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          "Applicants: ",
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(186, 180, 171, 1),
                              fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Applying for HOG Riders",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color.fromRGBO(186, 180, 171, 1),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          //3nd row ----------------------------------------------
          SizedBox(
            height: 10,
          ),

          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 175,
            width: 185,
            decoration: BoxDecoration(
                color: Color.fromRGBO(19, 22, 40, 1),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.event,
                      size: 50,
                      color: Color.fromRGBO(245, 178, 26, 1),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text(
                      "Upcoming Events: ",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Events",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                            fontSize: 12, color: Colors.white)),
                  ],
                ),
              ],
            ),
          ),
          //4th row --------------------------------------
          SizedBox(
            height: 10,
          ),

          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(24, 26, 27, 1),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Announcement",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              color: Colors.black,
                              child: ListTile(
                                leading: Icon(Icons.announcement),
                                iconColor: Color.fromRGBO(245, 178, 26, 1),
                                title: Text(
                                  "8th Year Anniversary Announcement",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  "Good morning Bros/Sis, with the tighter IATF restrictions and delta " +
                                      "strain proliferation. We made changes in the ride route itinerary to" +
                                      "limit stops only for fuel and meals to mitigate the potential risks. " +
                                      "Our meals will be served at facilities exclusive.",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.poppins(
                                    color: Color.fromRGBO(186, 180, 171, 1),
                                  ),
                                ),
                                trailing: IconButton(
                                    onPressed: () {}, icon: Icon(Icons.edit)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Colors.black,
                              ),
                              child: ListTile(
                                leading: Icon(Icons.announcement),
                                iconColor: Color.fromRGBO(245, 178, 26, 1),
                                title: Text(
                                  "For Uniformity of photos in our website",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  "H.O.G. Manila Chapter Philippines Inc For uniformity of photo/s in our website: For Officers, Members and Proby/ies Applicants there will be two scheduled pictorials. Said photo will be uploaded in the website. Those members who have pictures pos",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.poppins(
                                    color: Color.fromRGBO(186, 180, 171, 1),
                                  ),
                                ),
                                trailing: IconButton(
                                    onPressed: () {}, icon: Icon(Icons.edit)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Colors.black,
                              ),
                              child: ListTile(
                                leading: Icon(Icons.announcement),
                                iconColor: Color.fromRGBO(245, 178, 26, 1),
                                title: Text(
                                  "Fordwadaw in our website",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  "H.O.G. Manila Chapter Philippines Inc For uniformity of photo/s in our website: For Officers, Members and Proby/ies Applicants there will be two scheduled pictorials. Said photo will be uploaded in the website. Those members who have pictures pos",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.poppins(
                                    color: Color.fromRGBO(186, 180, 171, 1),
                                  ),
                                ),
                                trailing: IconButton(
                                    onPressed: () {}, icon: Icon(Icons.edit)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: ListTile(
                        leading: Icon(Icons.announcement),
                        iconColor: Color.fromRGBO(245, 178, 26, 1),
                        title: Text(
                          "8th Year Anniversary Announcement",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "Good morning Bros/Sis, with the tighter IATF restrictions and delta " +
                              "strain proliferation. We made changes in the ride route itinerary to" +
                              "limit stops only for fuel and meals to mitigate the potential risks. " +
                              "Our meals will be served at facilities exclusive.",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.poppins(
                            color: Color.fromRGBO(186, 180, 171, 1),
                          ),
                        ),
                        trailing: IconButton(
                            onPressed: () {}, icon: Icon(Icons.edit)),
                      ),
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
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(24, 26, 27, 1),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Event Joined",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Text(
                "HAPPY BIRTHDAY KAPATID!",
                style: GoogleFonts.poppins(
                  color: Color.fromRGBO(186, 180, 171, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.announcement),
                    iconColor: Color.fromRGBO(245, 178, 26, 1),
                    title: Text(
                      "BOBORJ",
                      style: GoogleFonts.poppins(
                        color: Color.fromRGBO(186, 180, 171, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "March 1st, 1971",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                        color: Color.fromRGBO(186, 180, 171, 1),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.announcement),
                    iconColor: Color.fromRGBO(245, 178, 26, 1),
                    title: Text(
                      "BOBORJ",
                      style: GoogleFonts.poppins(
                        color: Color.fromRGBO(186, 180, 171, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "March 1st, 1971",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                        color: Color.fromRGBO(186, 180, 171, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
