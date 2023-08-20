// ignore: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomLisTile extends StatelessWidget {
  String? name, phone, num;

  void Function()? callBackMethod;
  CustomLisTile({required this.name, required this.phone, required this.num});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 32, 130, 251),
        child: Text(num!,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        radius: 30,
      ),
      title: Text(name!,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          )),
      subtitle: Text(
        phone!,
        style: TextStyle(
          color: Color.fromARGB(255, 171, 170, 170),
          fontSize: 15,
        ),
      ),
      onTap: () {},
    );
  }
}
