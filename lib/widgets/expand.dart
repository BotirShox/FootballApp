import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/utils/dimension.dart';
import 'package:untitled1/widgets/sec_text.dart';

class ExpandText extends StatefulWidget {
  final String text;

  const ExpandText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandText> createState() => _ExpandTextState();
}

class _ExpandTextState extends State<ExpandText> {
  late String first;
  late String second;

  bool hidden = true;

  double textHeight = Dimension.screenHeight/6.0;
  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      first = widget.text.substring(0, textHeight.toInt());
      second = widget.text.substring(textHeight.toInt()+1, widget.text.length);
    } else {
      first = widget.text;
      second = " ";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: second.isEmpty?SecText(text: first):Column(
        children: [
          SecText(height: 1.5, color: Colors.black, text: hidden?(first + " ... "):(first + second)),
          InkWell(
            onTap: (){
                setState((){
                  hidden =! hidden;
                });
            },
            child: Row(
              children: [
                SecText(text: "Show All", color: Colors.pink,),
                // ignore: prefer_const_constructors
                Icon(hidden?Icons.arrow_drop_down:Icons.arrow_drop_up, color: Colors.pink,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
