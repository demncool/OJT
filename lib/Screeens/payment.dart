// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

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

class ProofOfPayment extends StatefulWidget {
  const ProofOfPayment({Key? key}) : super(key: key);

  @override
  State<ProofOfPayment> createState() => _ProofOfPaymentState();
}

class _ProofOfPaymentState extends State<ProofOfPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(19, 22, 40, 1),
        title: Row(
          children: [
            Image.asset(
              "assets/images/try.jpg",
              height: 50,
              // fit: BoxFit.scaleDown,
            ),
            Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
            Text("Proof Of Payment"),
          ],
        ),
      ),
      body: ProofOfPaymentBody(),
    );
  }
}

class ProofOfPaymentBody extends StatefulWidget {
  const ProofOfPaymentBody({Key? key}) : super(key: key);

  @override
  State<ProofOfPaymentBody> createState() => _ProofOfPaymentBodyState();
}

class _ProofOfPaymentBodyState extends State<ProofOfPaymentBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(31, 33, 35, 1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
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
        ]),
      ),
    );
  }
}
