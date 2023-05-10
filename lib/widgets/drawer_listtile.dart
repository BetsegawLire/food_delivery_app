import 'package:flutter/material.dart';
import '../constants/text_constants.dart';

class DrawerListTile extends StatelessWidget {
  final text;
  final onTap;

  DrawerListTile({this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: kDarkMediumText,
      ),
      onTap: onTap,
    );
  }
}
