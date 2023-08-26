import 'package:flutter/material.dart';

class Task3 extends StatelessWidget {
  const Task3();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsetsDirectional.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(bottom: 15),
                child: Text(
                  "Menu",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      "HOT DRINKS",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Partition",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
              Container(
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsetsDirectional.only(top: 15),
                child: Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage("lib/images/cappicino.jpg"),
                      ),
                      margin: EdgeInsetsDirectional.only(end: 30),
                      width: 90,
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "CAPPUCCINO",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "40 L.E",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsetsDirectional.only(top: 15),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        "lib/images/coffe.jpg",
                        width: 90,
                      ),
                      margin: EdgeInsetsDirectional.only(end: 30),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "COFFEE",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "30 L.E",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsetsDirectional.only(top: 15),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset("lib/images/mocca.jpg"),
                      margin: EdgeInsetsDirectional.only(end: 30),
                      width: 90,
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "MOCHA",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "40 L.E",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
