import 'package:flutter/material.dart';

dynamic decorate(String label) {
  return InputDecoration(
    labelText: label,
    labelStyle: TextStyle(color: Colors.teal),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.teal)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.teal)),
  );
}
