import 'dart:math';

import 'package:codigo2_people/user_name.dart';
import 'package:flutter/material.dart';

class ItemPersomWidget extends StatelessWidget {
  //Map<String, dynamic> data;
  UserModel data;
  Function myFunction;
  ItemPersomWidget({
    required this.data,
    required this.myFunction,
  });

  final List<Color> _colors = [
    Colors.indigo,
    Colors.redAccent,
    Colors.blue,
    Colors.amber,
    Colors.teal,
    Colors.purple,
    Colors.pinkAccent
  ];

  @override
  Widget build(BuildContext context) {
    int index = Random().nextInt(_colors.length);
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 6.0),
      elevation: 5,
      shadowColor: Colors.black.withOpacity(0.2),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: _colors[index],
          child: Text(
            data.name[0],
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        title: Text(
          data.name,
        ),
        subtitle: Text("Teléfono: ${data.phone} - Rol: ${data.rol}"),
        trailing: IconButton(
          onPressed: () {
            myFunction();
          },
          icon: Icon(
            Icons.delete,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}
