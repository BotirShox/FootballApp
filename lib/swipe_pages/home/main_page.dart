import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/widgets/sec_text.dart';
import 'package:untitled1/widgets/text_font.dart';

import '../../utils/dimension.dart';
import 'main_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
  /*  print("current height: " + MediaQuery.of(context).size.height.toString());
    print("current width: " + MediaQuery.of(context).size.width.toString()); */
    return Scaffold(
      body: Column(
        children: [
          //Haeder page
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimension.height10, bottom: Dimension.height5),
              padding: EdgeInsets.only(left: Dimension.height5, right: Dimension.height10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      TextFont(text: "Russia", color: Colors.deepPurple, size: 35,),
                      Row(
                        children: [
                          SecText(text:"Moscow", color: Colors.black54),
                          Icon(Icons.arrow_drop_down_circle_rounded, color: Colors.black38,)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                    width: Dimension.width4,
                    height: Dimension.width4,
                    child: Icon(Icons.search, color: Colors.white54, size: 20,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.radius1),
                      color: Colors.black54,
                    ),
                  ) ,
                 )
                ],
              ),
            ),
          ),
          //Body page
          Expanded(child: SingleChildScrollView(
            child: MainBody(),
          )),
        ],
      ),
    );
  }
}
