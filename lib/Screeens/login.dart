// ignore_for_file: prefer_const_constructors

import 'package:application/Screeens/signup.dart';
import 'package:flutter/material.dart';
import '../Functions/loginFunction.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/background.jpg'),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.darken),
          ),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 120,
                ),
                Image.asset(
                  'assets/images/try.jpg',
                  height: 100,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 25, color: Color.fromARGB(255, 201, 193, 193)),
                ),
                const Text(
                  'Enter your details to login to your account',
                  style: TextStyle(
                      fontSize: 13, color: Color.fromARGB(255, 201, 193, 193)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: TextField(
                    controller: username,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 224, 218, 218)),
                    decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 255, 255, 255)
                          .withOpacity(0.1),
                      filled: true,
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      labelText: "Hog Member ID or UseSrname",
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
                    controller: password,
                    obscureText: true,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 224, 218, 218)),
                    decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 255, 255, 255)
                          .withOpacity(0.1),
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
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder()),
                      onPressed: () {
                        login(context);
                      },
                      child: const Text('Sign in'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15),
                        ),
                        const Text(
                          "Don't you have an account yet?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()));
                          },
                          child: const Text('Sign up'),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Forgot Password?'),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
