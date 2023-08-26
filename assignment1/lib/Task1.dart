import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 88, 172, 89),
        title: Text(
          "Task 1",
        ),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsetsDirectional.all(15),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150,
                    height: 200,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 175,
                  ),
                  Container(
                    width: 150,
                    height: 200,
                    color: Colors.red,
                  ),
                ],
              ),
              SizedBox(
                width: 75,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150,
                    height: 200,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    height: 180,
                  ),
                  Container(
                    width: 150,
                    height: 200,
                    color: Color.fromARGB(255, 239, 144, 2),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // ),
    );
  }
}
