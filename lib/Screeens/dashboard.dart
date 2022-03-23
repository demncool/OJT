// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

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
        backgroundColor: Color.fromRGBO(19, 19, 29, 1),
        // leading: IconButton(
        //     onPressed: () {
        //       Navigator.push(context,
        //           MaterialPageRoute(builder: (context) => const Dashboard()));
        //     },
        //     icon: Image.asset("assets/images/try.jpg")),
        actions: [
          IconButton(icon: Icon(Icons.person), onPressed: () {}),
        ],
        // actions: [
        //   PopupMenuButton(itemBuilder: (context) {
        //     return [
        //       PopupMenuItem<int>(
        //         value: 0,
        //         child: Text("My Account"),
        //       ),
        //       PopupMenuItem<int>(
        //         value: 1,
        //         child: Text("Settings"),
        //       ),
        //       PopupMenuItem<int>(
        //         value: 2,
        //         child: Text("Logout"),
        //       ),
        //     ];
        //   }, onSelected: (value) {
        //     if (value == 0) {
        //       print("My account menu is selected.");
        //     } else if (value == 1) {
        //       print("Settings menu is selected.");
        //     } else if (value == 2) {
        //       print("Logout menu is selected.");
        //     }
        //   }),
        //],
      ),
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(245, 178, 26, 1),
        child: ListView(
          children: [
            DrawerHeader(
              child: Padding(
                padding: EdgeInsets.all(55),
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(19, 19, 29, 1),
                image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: AssetImage("assets/images/try.jpg")),
              ),
            ),
            ListTile(
              leading: Icon(Icons.timeline),
              title: Text('Timeline',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text(
                'Proof of Payment',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Profile',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Member',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.report),
              title: Text('Reports',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text('Event',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setup',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onTap: () => {Navigator.of(context).pop()},
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
                    Image.asset(
                      "assets/images/HOG QR.png",
                      fit: BoxFit.fill,
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
                    )
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
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 200,
            width: 185,
            decoration: BoxDecoration(
                color: Color.fromRGBO(24, 26, 27, 1),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Announcement",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
