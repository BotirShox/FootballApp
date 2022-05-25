import '../utils/dimension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFont extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  TextFont({Key? key, this.color = const Color(0xFF332d2d),
    required this.text,  this.size=0,
    this.overflow = TextOverflow.ellipsis}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
    text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: size==0?Dimension.font1:size,
        fontFamily: 'Default',
        fontWeight: FontWeight.w400
      ),
    );
  }
}
