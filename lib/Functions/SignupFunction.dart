// ignore_for_file: file_names

import 'dart:convert';
import 'package:application/Screeens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

TextEditingController usernameSignup = TextEditingController();
TextEditingController passwordSignup = TextEditingController();

Future signup(BuildContext cont) async {
  if (usernameSignup.text == "" || passwordSignup.text == "") {
    Fluttertoast.showToast(
        msg: "Enter Credentials",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  } else {
    var url = "http://192.168.0.100/OJT/db_signup.php";
    var response = await http.post(Uri.parse(url), body: {
      "username": usernameSignup.text,
      "password": passwordSignup.text,
    });

    var data = jsonDecode(response.body);
    if (data == "success") {
      Navigator.push(
          cont,
          MaterialPageRoute(
            builder: (context) => const Login(),
          ));
    } else {
      Fluttertoast.showToast(
          msg: "User Exist",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}
