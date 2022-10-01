import 'package:codigo2_people/item_person_widget.dart';
import 'package:codigo2_people/user_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PeoplePage extends StatefulWidget {
  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  List<Map<String, dynamic>> people = [
    {
      "id": 1,
      "name": "José Carlos Montes",
      "phone": "987654321",
    },
    {
      "id": 2,
      "name": "Fiorela Marquez",
      "phone": "555555534",
    },
    {
      "id": 3,
      "name": "Luis Arias",
      "phone": "123456789",
    }
  ];

  List<UserModel> people2 = [
    UserModel(id: 1, name: "Daniel Lopez", phone: "123456789", rol: 'User'),
    UserModel(id: 2, name: "Elvis Barrionuevo", phone: "678954321", rol: 'Admin'),
    UserModel(id: 3, name: "Daniel Lopez", phone: "987654321", rol: 'User'),
  ];

  String _name = '';
  String _phone = '';
  String _rol = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("People Page (${people2.length})"),
        actions: [
          IconButton(
            onPressed: () {
              people2.add(
                  UserModel(id: 4, name: "David Moreno", phone: "567890434", rol: 'User'));
              setState(() {});
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14.0),
        child: Column(children: [
          Text(
            "Registrar Persona",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.75),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Nombre completo",
            ),
            onChanged: (String value) {
              _name = value;
            },
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Teléfono",
            ),
            onChanged: (String value) {
              _phone = value;
            },
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Rol",
            ),
            onChanged: (String value){
              _rol = value;
            },
          ),
          SizedBox(
            height: 12.0,
          ),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                people2.add(
                  UserModel(
                    id: people2.length + 1,
                    name: _name,
                    phone: _phone,
                    rol: _rol,
                  ),
                );
                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
              ),
              child: Text(
                "Agregar",
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Divider(),
          Text(
            "Listado de personas",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.75),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          ...List.generate(
            people2.length,
            (index) => ItemPersomWidget(data: people2[index]),
          ),
        ]),
      ),
    );
  }
}
