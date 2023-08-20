import 'package:flutter/material.dart';
import 'package:flutter_app/Models/WhatsListTile.dart';

// ignore: must_be_immutable
class WhatsAppTile extends StatelessWidget {
  WhatsListTile? Tile;
  WhatsAppTile({required this.Tile});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("lib/images/profile.png"),
        radius: 30,
      ),
      title: Text(
        Tile!.name,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
      ),
      subtitle: Row(children: [
        // Icon(
        //   Icons.done_all,
        //   color: Tile!.color,
        // ),
        Container(child: Tile!.icon),
        SizedBox(
          width: 5,
        ),
        Text(
          "Hello ${Tile!.subname}",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ]),
      trailing: Text(
        Tile!.date,
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey,
        ),
      ),
      onTap: () {},
    );
  }
}
