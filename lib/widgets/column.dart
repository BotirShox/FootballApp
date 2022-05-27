import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/widgets/reusible.dart';
import 'package:untitled1/widgets/sec_text.dart';
import 'package:untitled1/widgets/text_font.dart';

import '../utils/dimension.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFont(text: text, size: Dimension.font2),
        SizedBox(height: Dimension.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) => Icon(Icons.star, color: Colors.pink, size: 15,)),
            ),
            SizedBox(width: 10,),
            SecText(text: " "),
            SizedBox(width: 10,),
            SecText(text: " "),
            SizedBox(width: 10,),
            SecText(text: " ")
          ],
        ),
        SizedBox(height: Dimension.height5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTextWidget(icon: Icons.circle,
                iconColor: Colors.teal,
                text: "Normal"),

            IconTextWidget(icon: Icons.location_on,
                iconColor: Colors.pink,
                text: "1.4 km"),

            IconTextWidget(icon: Icons.access_time_rounded,
                iconColor: Colors.black,
                text: "1 h")
          ],
        )
      ],
    );
  }
}
