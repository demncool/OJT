// ignore_for_file: prefer_const_constructors
import 'package:application/Screeens/login.dart';
import 'package:flutter/material.dart';

import 'Screeens/login.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OJT',
      home: Login(),
    );
  }
}
