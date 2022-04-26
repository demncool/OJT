// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
        body: ProfileBody());
  }
}

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(24, 26, 27, 1),
          title: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Profile ",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Color.fromRGBO(209, 205, 199, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "  Personal Information ",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Color.fromRGBO(209, 205, 199, 1),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              height: 1000,
              color: const Color.fromRGBO(24, 26, 27, 1),
              child: DrawerHeader(
                child: Column(
                  children: [
                    const Text("dawdawwadw"),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(31, 33, 35, 1),
          ),
        ),
      ),
    );
  }
}
