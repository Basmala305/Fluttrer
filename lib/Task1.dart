import 'package:flutter/material.dart';
import 'package:flutter_app/Widget/ContactIcon.dart';
import 'package:flutter_app/Widget/CustomListTile.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Padding(
          padding: EdgeInsetsDirectional.only(bottom: 10),
          child: Text(
            "Contacts",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 60.0,
        actions: [
          Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 15),
              child: Icon(
                Icons.add,
                color: Colors.white,
              )),
        ],
      ),
      body: SafeArea(
          child: Expanded(
        child: ListView(children: [
          Column(children: [
            CustomLisTile(
              name: "Mohamed samy",
              num: "1",
              phone: "01016673951",
            ),
            Container(
              height: 0,
              width: 200,
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 220, 219, 219)),
              ),
            ),
            ContactIcon(),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 0,
              width: 350,
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 220, 219, 219)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomLisTile(
              name: "mohamed Elsabaey",
              num: "2",
              phone: "01559508335",
            ),
            Container(
              height: 0,
              width: 200,
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 220, 219, 219)),
              ),
            ),
            ContactIcon(),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 0,
              width: 350,
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 220, 219, 219)),
              ),
            ),
            CustomLisTile(name: "Ahmed", num: "3", phone: "01023423526"),
            Container(
              height: 0,
              width: 200,
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 220, 219, 219)),
              ),
            ),
            ContactIcon(),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 0,
              width: 350,
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 220, 219, 219)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomLisTile(name: "omar", num: "4", phone: "01013563951"),
            Container(
              height: 0,
              width: 200,
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 220, 219, 219)),
              ),
            ),
            ContactIcon(),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 0,
              width: 350,
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 220, 219, 219)),
              ),
            ),
            SizedBox(height: 10),
            CustomLisTile(name: "ali", num: "5", phone: "01346346967"),
            Container(
              height: 0,
              width: 200,
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 220, 219, 219)),
              ),
            ),
            ContactIcon(),
          ]),
        ]),
      )),
    );
  }
}
