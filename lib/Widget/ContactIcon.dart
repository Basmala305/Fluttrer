import 'package:flutter/material.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.phone,
              color: Colors.black,
            )),
        SizedBox(
          width: 50,
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: Colors.green,
            )),
        SizedBox(
          width: 50,
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
              color: Colors.red,
            )),
      ],
    );
  }
}
