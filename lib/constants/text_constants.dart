import 'package:flutter/material.dart';

const kGreyMediumText = TextStyle(
  fontSize: 16,
  color: Colors.grey,
);
const kDarkMediumText = TextStyle(
  color: Colors.black,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
const kBoldPriceText = TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
const kEmailTextField = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black),
  ),
  labelStyle: TextStyle(color: Colors.black),
  labelText: 'Email',
  focusColor: Colors.red,
);
const kPasswordTextField = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black),
  ),
  labelStyle: TextStyle(color: Colors.black),
  labelText: 'Password',
  focusColor: Colors.red,
);
