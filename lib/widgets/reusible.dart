import 'package:flutter/cupertino.dart';
import 'package:untitled1/widgets/sec_text.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconTextWidget({Key? key,
  required this.icon,
  required this.iconColor, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor,),
        SizedBox(width: 15,),
        SecText(text: text)
      ],
    );
  }
}


