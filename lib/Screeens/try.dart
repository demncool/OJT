import 'package:flutter/material.dart';

class Announce extends StatefulWidget {
  const Announce({Key? key}) : super(key: key);

  @override
  State<Announce> createState() => _AnnounceState();
}

class _AnnounceState extends State<Announce> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: double.infinity,
            color: Color.fromRGBO(24, 26, 27, 1),
            child: ListTile(
              title: Text("dwadwa"),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
