// ignore_for_file: file_names

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:application/Screeens/dashboardScreen.dart';

TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();

Future login(BuildContext cont) async {
  if (username.text == "" || password.text == "") {
    Fluttertoast.showToast(
        msg: "Enter Credentials",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  } else {
    var url = "http://10.0.2.2/OJT/db_login.php";
    var response = await http.post(Uri.parse(url), body: {
      "username": username.text,
      "password": password.text,
    });

    var data = jsonDecode(response.body);
    if (data == "success") {
      Navigator.push(
          cont,
          MaterialPageRoute(
            builder: (context) => const Dashboard(),
          ));
    } else {
      Fluttertoast.showToast(
          msg: "Invalid Credentials",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}
