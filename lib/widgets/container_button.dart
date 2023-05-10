import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  final color;
  final child;
  ContainerButton({this.color, this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      // color: Colors.red,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
