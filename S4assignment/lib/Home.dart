import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static String id = "Home";
  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  int? radio, radio2;

  get onPressed => null;

  String? getGrade(int? x, int? y) {
    if (x == 0 && y == 1) {
      return ("Grade is 10/10");
    } else if ((x != 0 && x != null) && (y != 1 && y != null)) {
      return ("Grade is 0/10");
    } else if (x == null && y == null) {
      return "This not valid you should answer on Qusetions";
    } else {
      return ("Grade is 5/10");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Form(
        key: formkey,
        child: ListView(children: [
          Container(
            margin: EdgeInsetsDirectional.all(30),
            height: 400,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.all(10),
                  child: Text(
                    "Q5.SDK represents____",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                RadioListTile(
                  value: 0,
                  groupValue: radio,
                  onChanged: (value) {
                    setState(() {
                      radio = value;
                    });
                  },
                  title: Text(
                    "Software Development Knowledge",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                RadioListTile(
                  value: 1,
                  groupValue: radio,
                  onChanged: (value) {
                    setState(() {
                      radio = value;
                    });
                  },
                  title: Text(
                    "Software Data Kit",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                RadioListTile(
                  value: 2,
                  groupValue: radio,
                  onChanged: (value) {
                    setState(() {
                      radio = value;
                    });
                  },
                  title: Text(
                    "Software Database Kit",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                RadioListTile(
                  value: 3,
                  groupValue: radio,
                  onChanged: (value) {
                    setState(() {
                      radio = value;
                    });
                  },
                  title: Text(
                    "Software Development Kit",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsetsDirectional.all(30),
            height: 400,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.all(15),
                  child: Text(
                    "Q6.What are the advantages of Flutter",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                RadioListTile(
                  value: 0,
                  groupValue: radio2,
                  onChanged: (value) {
                    setState(() {
                      radio2 = value;
                    });
                  },
                  title: Text(
                    "Cross-platform Development",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                RadioListTile(
                  value: 1,
                  groupValue: radio2,
                  onChanged: (value) {
                    setState(() {
                      radio2 = value;
                    });
                  },
                  title: Text(
                    "Faster Development",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                RadioListTile(
                  value: 2,
                  groupValue: radio2,
                  onChanged: (value) {
                    setState(() {
                      radio2 = value;
                    });
                  },
                  title: Text(
                    "UI Focused",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                RadioListTile(
                  value: 3,
                  groupValue: radio2,
                  onChanged: (value) {
                    setState(() {
                      radio2 = value;
                    });
                  },
                  title: Text(
                    "All of the above",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.all(30),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.pink, borderRadius: BorderRadius.circular(50)),
            child: TextButton(
              child: Text("Submit",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(getGrade(radio, radio2)!)));
                  setState(() {
                    radio = null;
                    radio2 = null;
                  });
                } else
                  print("Not Validation");
              },
            ),
          ),
        ]),
      ),
    );
  }
}
