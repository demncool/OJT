// ignore_for_file: file_names

import 'package:application/Functions/LingupFunction.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: const AssetImage('assets/images/background.jpg'),
          fit: BoxFit.fill,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
        )),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Image(
              image: AssetImage('assets/images/hogLogo.jpg'),
              width: 150,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Welcome!',
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'Create your account',
              style: GoogleFonts.robotoSlab(
                  textStyle: const TextStyle(
                fontSize: 15,
                color: Colors.white,
              )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: TextField(
                controller: usernameSignup,
                style:
                    const TextStyle(color: Color.fromARGB(255, 224, 218, 218)),
                decoration: InputDecoration(
                  fillColor:
                      const Color.fromARGB(255, 255, 255, 255).withOpacity(0.1),
                  filled: true,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  labelText: "Username",
                  labelStyle: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Color.fromARGB(255, 201, 193, 193),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 25),
              child: TextField(
                controller: passwordSignup,
                obscureText: true,
                style:
                    const TextStyle(color: Color.fromARGB(255, 224, 218, 218)),
                decoration: InputDecoration(
                  fillColor:
                      const Color.fromARGB(255, 255, 255, 255).withOpacity(0.1),
                  filled: true,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  labelText: "Password",
                  labelStyle: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Color.fromARGB(255, 201, 193, 193),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
              onPressed: () {
                signup(context);
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
