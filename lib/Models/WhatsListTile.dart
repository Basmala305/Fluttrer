import 'package:flutter/material.dart';

class WhatsListTile {
  String name, date = "7/10/23";
  String subname;
  Icon? icon;
  void Function()? callBackMethod;

  WhatsListTile(
      {required this.name,
      required this.date,
      this.icon,
      required this.subname});
}
