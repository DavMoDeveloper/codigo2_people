import 'dart:ffi';

import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String expresion = '';

  String numero = '0';

  String operation = '';

  suma(numero1, numero2) {
    return numero1 + numero2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Test",
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    margin: const EdgeInsets.all(2),
                    color: Colors.red,
                    child: Column(
                      children: [
                        Text(
                          expresion,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          numero.toString(),
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      expresion = '';
                      numero = '0';
                      setState(() {});                      
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "C",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (expresion.length > 1) {
                        numero = '0';
                      }
                      setState(() {
                        
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "CE",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      numero = (double.parse(numero) * 0.01).toString();
                      setState(() {
                        
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "%",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      operation = "/";
                      if (expresion.length == 0 ||
                          expresion.split("=").length > 1) {
                        expresion = numero + " " + operation;
                      } else {
                        print("Entramos");
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "/",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (numero == '0' ||
                          operation == '+' ||
                          operation == '-' ||
                          operation == 'X' ||
                          operation == '/') {
                        numero = '1';
                        operation = '';
                      } else {
                        numero += '1';
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (numero == '0' ||
                          operation == '+' ||
                          operation == '-' ||
                          operation == 'X' ||
                          operation == '/') {
                        numero = '2';
                        operation = '';
                      } else {
                        numero += '2';
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "2",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (numero == '0' ||
                          operation == '+' ||
                          operation == '-' ||
                          operation == 'X' ||
                          operation == '/') {
                        numero = '3';
                        operation = '';
                      } else {
                        numero += '3';
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "3",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      operation = "X";
                      if (expresion.length == 0 ||
                          expresion.split("=").length > 1) {
                        expresion = numero + " " + operation;
                      } else {
                        print("Entramos");
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "X",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (numero == '0' ||
                          operation == '+' ||
                          operation == '-' ||
                          operation == 'X' ||
                          operation == '/') {
                        numero = '4';
                        operation = '';
                      } else {
                        numero += '4';
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "4",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (numero == '0' ||
                          operation == '+' ||
                          operation == '-' ||
                          operation == 'X' ||
                          operation == '/') {
                        numero = '5';
                        operation = '';
                      } else {
                        numero += '5';
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "5",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (numero == '0' ||
                          operation == '+' ||
                          operation == '-' ||
                          operation == 'X' ||
                          operation == '/') {
                        numero = '6';
                        operation = '';
                      } else {
                        numero += '6';
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "6",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      operation = "-";
                      if (expresion.length == 0 ||
                          expresion.split("=").length > 1) {
                        expresion = numero + " " + operation;
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "-",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (numero == '0' ||
                          operation == '+' ||
                          operation == '-' ||
                          operation == 'X' ||
                          operation == '/') {
                        numero = '7';
                        operation = '';
                      } else {
                        numero += '7';
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "7",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (numero == '0' ||
                          operation == '+' ||
                          operation == '-' ||
                          operation == 'X' ||
                          operation == '/') {
                        numero = '8';
                        operation = '';
                      } else {
                        numero += '8';
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "8",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (numero == '0' ||
                          operation == '+' ||
                          operation == '-' ||
                          operation == 'X' ||
                          operation == '/') {
                        numero = '9';
                        operation = '';
                      } else {
                        numero += '9';
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "9",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      operation = "+";
                      if (expresion.length == 0 ||
                          expresion.split("=").length > 1) {
                        expresion = numero + " " + operation;
                      } else {
                        print("Entramos");
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "+",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      if (operation == '+' ||
                          operation == '-' ||
                          operation == 'X' ||
                          operation == '/') {
                        numero = '0';
                        operation = '';
                      } else {
                        numero = numero + '0';
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "0",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (numero.indexOf('.') == -1) {
                        numero = numero + ".";
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              ".",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            )
                          ]),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      print(expresion.indexOf('X'));
                      if (expresion.indexOf('+') == 0 ||
                          expresion.indexOf('+') > 0) {
                        double primero = double.parse(expresion.split("+")[0]);
                        double segundo = double.parse(numero);
                        numero = (primero + segundo).toString();
                        expresion = primero.toString() +
                            " + " +
                            segundo.toString() +
                            "=";
                      }
                      if (expresion.indexOf('-') == 0 ||
                          expresion.indexOf('-') > 0) {
                        double primero = double.parse(expresion.split("-")[0]);
                        double segundo = double.parse(numero);
                        numero = (primero - segundo).toString();
                        expresion = primero.toString() +
                            " - " +
                            segundo.toString() +
                            "=";
                      }
                      if (expresion.indexOf('X') == 0 ||
                          expresion.indexOf('X') > 0) {
                        print(expresion);
                        double primero = double.parse(expresion.split("X")[0]);
                        double segundo = double.parse(numero);
                        numero = (primero * segundo).toString();
                        expresion = primero.toString() +
                            " X " +
                            segundo.toString() +
                            "=";
                      }
                      if (expresion.indexOf('/') == 0 ||
                          expresion.indexOf('/') > 0) {
                        double primero = double.parse(expresion.split("/")[0]);
                        double segundo = double.parse(numero);
                        numero = (primero / segundo).toString();
                        expresion = primero.toString() +
                            " / " +
                            segundo.toString() +
                            "=";
                      }
                      setState(() {
                        operation = '';
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "=",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
