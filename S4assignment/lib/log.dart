import 'package:assignment1/forget.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class log extends StatefulWidget {
  const log();
  static String id = "log";

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {
  bool seen = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
            child: Center(
          child: Container(
            padding: EdgeInsetsDirectional.all(10),
            width: 350,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 200,
                  margin: EdgeInsetsDirectional.all(20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 236, 71, 126),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "Log in",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) return "Field is empty";

                            return null;
                          },
                          onChanged: (value) {},
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          onTapOutside: (value) {
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: "Email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) return "Field is empty";
                            if (value.length < 8) {
                              return "Character lessthan 8";
                            }
                            return null;
                          },
                          obscureText: seen,
                          onChanged: (value) {},
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          onTapOutside: (value) {
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.remove_red_eye),
                                onPressed: () {
                                  setState(() {
                                    seen = !seen;
                                  });
                                },
                              )),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(forget.id);
                          },
                          style: ButtonStyle(),
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        ElevatedButton(
                            child: Text("Log in",
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
                              if (formKey.currentState!.validate()) {
                                Navigator.of(context).pushNamed(Home.id);
                              } else
                                print("Not Validation");
                            }),
                      ],
                    ))
              ],
            ),
          ),
        )));
  }
}
