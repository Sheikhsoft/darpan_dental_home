import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  fillColor: Color(0xfff2f2f3),
  filled: true,
  border: OutlineInputBorder(
    borderSide: BorderSide(
      width: 0,
      style: BorderStyle.none,
    ),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);
const boxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(
    Radius.circular(10)
  ),
);