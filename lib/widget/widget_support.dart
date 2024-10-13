import 'package:flutter/material.dart';

class Appwidget {
  static TextStyle boldTextfieldStyle() {
    return const TextStyle(
        color: Colors.blueGrey,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Nerko');
  }

  static TextStyle headerTextfieldStyle() {
    return const TextStyle(
        color: Colors.blueGrey,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: 'Nerko');
  }

  static TextStyle lightTextfieldStyle() {
    return const TextStyle(
        color: Colors.blueGrey,
        fontSize: 20,
        // fontWeight: FontWeight.bold,
        fontFamily: 'Nerko');
  }

  static TextStyle semiBoldTextfieldStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: 'Nerko');
  }

  static TextStyle semilightTextfieldStyle() {
    return const TextStyle(
        color: Colors.grey,
        fontSize: 16,
        //fontWeight: FontWeight.bold,
        fontFamily: 'Nerko');
  }

  static TextStyle pricelightTextfieldStyle() {
    return const TextStyle(
        color: Colors.redAccent,
        fontSize: 15,
        fontWeight: FontWeight.bold,
        fontFamily: 'Nerko');
  }

  static TextStyle DeliverTextfieldStyle() {
    return const TextStyle(
        color: Color.fromARGB(255, 140, 195, 223),
        fontSize: 16,
        fontWeight: FontWeight.w900,
        fontFamily: 'Nerko');
  }
}
