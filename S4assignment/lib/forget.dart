import 'package:flutter/material.dart';

import 'Home.dart';

class forget extends StatelessWidget {
  forget({super.key});

  static String id = "forget";
  GlobalKey<FormState> form = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Center(
            child: Container(
              padding: EdgeInsetsDirectional.all(10),
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(children: [
                Container(
                  height: 50,
                  width: 300,
                  margin: EdgeInsetsDirectional.all(20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 236, 71, 126),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "Reset Password",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Form(
                  key: form,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) return " Field is Empty";
                        },
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                          child: Text("Submit",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              )),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 224, 33, 96),
                            ),
                            shape: MaterialStatePropertyAll(
                                BeveledRectangleBorder()),
                          ),
                          onPressed: () {
                            if (form.currentState!.validate()) {
                              Navigator.of(context).pushNamed(Home.id);
                            } else
                              print("Not Validation");
                          }),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
