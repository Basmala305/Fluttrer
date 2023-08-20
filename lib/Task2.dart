import 'package:flutter/material.dart';
import 'package:flutter_app/Widget/WhatsAppTile.dart';

import 'Models/WhatsListTile.dart';

// ignore: must_be_immutable
class Task2 extends StatelessWidget {
  Task2({super.key});
  List<WhatsListTile> myData = [
    WhatsListTile(name: "Ahmed Salah", date: "07:47 PM", subname: " "),
    WhatsListTile(name: "User", date: "7/10/23", subname: " "),
    WhatsListTile(
        name: "User2",
        subname: "User2",
        icon: Icon(Icons.done_all, color: Colors.blue),
        date: "7/10/23"),
    WhatsListTile(name: "User3", date: "7/10/23", subname: " "),
    WhatsListTile(
        name: "User4",
        subname: "User4",
        icon: Icon(Icons.done_all, color: Colors.blue),
        date: "7/10/23"),
    WhatsListTile(name: "User5", date: "7/10/23", subname: " "),
    WhatsListTile(
        name: "User6",
        subname: "User6",
        icon: Icon(Icons.done_all, color: Colors.blue),
        date: "7/10/23"),
    WhatsListTile(name: "User7", date: "7/10/23", subname: " "),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsetsDirectional.all(10),
          child: Text("WhatsApp",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              )),
        ),
        backgroundColor: Color.fromARGB(255, 32, 89, 62),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.all(10),
            child: Row(children: [
              Icon(Icons.search, color: Colors.white),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
              )
            ]),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Stack(children: [
              Container(
                padding: EdgeInsetsDirectional.all(15),
                height: 55,
                width: 500,
                color: Color.fromARGB(255, 32, 89, 62),
                child:
                    Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Icon(Icons.camera_alt, color: Colors.grey),
                  Expanded(child: SizedBox()),
                  Text("CHATS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      )),
                  Expanded(child: SizedBox()),
                  Text("STATUS",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                  Expanded(child: SizedBox()),
                  Text("CALLS",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                ]),
              ),
              Positioned(
                top: 52,
                left: 50,
                child: Container(
                  width: 140,
                  height: 7,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    color: Colors.white,
                  ),
                ),
              )
            ]),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) =>
                    WhatsAppTile(Tile: myData[index]),
                itemCount: myData.length,
                separatorBuilder: (context, index) => Divider(
                  thickness: 1,
                  indent: 30,
                  endIndent: 30,
                  color: const Color.fromARGB(255, 193, 191, 191),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
