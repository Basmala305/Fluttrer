import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Contanier extends StatefulWidget {
  Contanier({super.key});

  @override
  State<Contanier> createState() => _ContanierState();
}

class _ContanierState extends State<Contanier> {
  String title = "";
  List<Container> cont = [
    Container(
        width: 130,
        height: 150,
        color: Color.fromARGB(215, 166, 165, 165),
        child: TextField(
          onChanged: (value) {
            title:
            value;
          },
        )),
    Container(
        width: 130,
        height: 150,
        color: Color.fromARGB(215, 166, 165, 165),
        child: TextField(
          onChanged: (value) {
            title:
            value;
          },
        )),
    Container(
        width: 130,
        height: 150,
        color: Color.fromARGB(215, 166, 165, 165),
        child: TextField(
          onChanged: (value) {
            title:
            value;
          },
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsetsDirectional.all(5),
        child: Row(
          children: [
            InkWell(onTap: () {}, child: cont[0]),
            SizedBox(
              width: 3,
            ),
            InkWell(onTap: () {}, child: cont[1]),
            SizedBox(
              width: 3,
            ),
            InkWell(
              onTap: () {},
              child: cont[2],
            ),
          ],
        ),
      ),
    );
  }
}
