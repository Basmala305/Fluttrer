import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 57, 49, 49),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 88, 172, 89),
        title: Text(
          "Task 2",
        ),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 385,
            child: Center(
              child: Text(
                "Child 1",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 190,
                child: Center(
                  child: Text(
                    "Child 2",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(68, 240, 74, 1),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                width: 200,
                height: 190,
                child: Center(
                  child: Text(
                    "Child 3",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
