import '../utils/dimension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  SecText({Key? key, this.color = const Color(0xFFccc7c5),
    required this.text,  this.size=15, this.height=1.2
    }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: Dimension.font1,
          height: height,
          fontFamily: 'Default',
      ),
    );
  }
}
