// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future openDialog(cont) => showDialog(
      context: cont,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            height: double.infinity,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color.fromRGBO(24, 26, 27, 1),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                        width: 1.0, color: Colors.lightBlue.shade900),
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "What's on your mind?",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Color.fromRGBO(186, 180, 171, 1),
                      ),
                    ),
                  ),
                ),
                TextField(
                  maxLines: null,
                  autofocus: false,
                  style: TextStyle(
                    color: Color.fromARGB(255, 224, 218, 218),
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 70),
                    border: UnderlineInputBorder(),
                    hintText: 'Type Message...',
                    hintStyle:
                        TextStyle(color: Color.fromRGBO(186, 180, 171, 1)),
                  ),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Post"),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
