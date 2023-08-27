import 'log.dart';

import 'package:flutter/material.dart';

import 'Home.dart';

class Registration extends StatefulWidget {
  const Registration();
  static String id = "sign up";

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool scur = true;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  TextEditingController pass1 = TextEditingController();
  TextEditingController pass2 = TextEditingController();

  String? selectunvi, selectGender, selectGrade;
  List<String> gender = ["Male", "Famale"];
  List<String> grade = ["Grade1", "Grade2", "Grade3", "Grade4"];
  List<String> university = ["Helwan", "Ain shams", "Al Quhara"];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsetsDirectional.all(10),
            width: 350,
            height: 750,
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
                      "Register",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Form(
                    key: formstate,
                    child: Expanded(
                      child: ListView(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) return "Field is empty";
                              return null;
                            },
                            onChanged: (value) {},
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                            height: 10,
                          ),
                          TextFormField(
                            controller: pass1,
                            validator: (value) {
                              if (value!.isEmpty) return "Field is empty";
                              if (value.length < 8) {
                                return "Character lessthan 8";
                              }
                              return null;
                            },
                            obscureText: scur,
                            onChanged: (value) {},
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            onTapOutside: (value) {
                              FocusScope.of(context).requestFocus(FocusNode());
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.remove_red_eye),
                                  onPressed: () {
                                    setState(() {
                                      scur = !scur;
                                    });
                                  },
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: pass2,
                            validator: (value) {
                              if (value!.isEmpty) return "Field is empty";
                              if (value.length < 8)
                                return "Character lessthan 8";

                              if (value != pass1.text) {
                                return "Password is not Matching";
                              }

                              return null;
                            },
                            obscureText: scur,
                            onChanged: (value) {},
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            onTapOutside: (value) {
                              FocusScope.of(context).requestFocus(FocusNode());
                            },
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                labelText: " Confirm Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.remove_red_eye),
                                  onPressed: () {
                                    setState(() {
                                      scur = !scur;
                                    });
                                  },
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) return "Field is empty";

                              return null;
                            },
                            maxLength: 11,
                            onChanged: (value) {},
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            onTapOutside: (value) {
                              FocusScope.of(context).requestFocus(FocusNode());
                            },
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              labelText: " phone",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "University",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Container(
                                    margin: EdgeInsetsDirectional.all(10),
                                    padding: EdgeInsetsDirectional.all(10),
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    child: DropdownButton<String>(
                                      items: university
                                          .map((e) => DropdownMenuItem(
                                                value: e,
                                                child: Text(e),
                                              ))
                                          .toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          selectunvi = value as String;
                                        });
                                      },
                                      value: selectunvi,
                                    ),
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Column(
                                children: [
                                  Text(
                                    "Gender",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Container(
                                    padding: EdgeInsetsDirectional.all(10),
                                    margin: EdgeInsetsDirectional.all(10),
                                    height: 50,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                      color: Colors.blue,
                                    )),
                                    child: DropdownButton<String>(
                                      items: gender
                                          .map((e) => DropdownMenuItem(
                                                value: e,
                                                child: Text(e),
                                              ))
                                          .toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          selectGender = value as String;
                                        });
                                      },
                                      value: selectGender,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Grade",
                                style: TextStyle(fontSize: 20),
                              ),
                              Container(
                                padding: EdgeInsetsDirectional.all(10),
                                margin: EdgeInsetsDirectional.all(10),
                                height: 50,
                                width: 120,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Colors.blue,
                                )),
                                child: DropdownButton<String>(
                                  items: grade
                                      .map((e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(e),
                                          ))
                                      .toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      selectGrade = value as String;
                                    });
                                  },
                                  value: selectGrade,
                                ),
                              )
                            ],
                          ),
                          ElevatedButton(
                              child: Text("Sign up",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  )),
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 236, 71, 126),
                                ),
                                shape: MaterialStatePropertyAll(
                                    BeveledRectangleBorder()),
                              ),
                              onPressed: () {
                                if (formstate.currentState!.validate()) {
                                  Navigator.of(context).pushNamed(Home.id);
                                } else
                                  print("Not Validation");
                              }),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(log.id);
                            },
                            style: ButtonStyle(),
                            child: Text(
                              "Have an Account? Log in",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),

      // ),
    );
  }
}
