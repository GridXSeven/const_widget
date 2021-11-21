import 'dart:math';
import 'package:flutter/material.dart';

class RndColorContainer extends StatefulWidget {
  final double h;
  final double w;

  RndColorContainer({
    this.h = 100,
    this.w = 100,
  });

  @override
  _RndColorContainerState createState() => _RndColorContainerState();
}

class _RndColorContainerState extends State<RndColorContainer> {
  Color genRandomColor() {
    return Color.fromRGBO(Random().nextInt(255) + 1, Random().nextInt(255) + 1,
        Random().nextInt(255) + 1, 1);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: genRandomColor(),
      ),
      height: widget.h,
      width: widget.w,
    );
  }
}
