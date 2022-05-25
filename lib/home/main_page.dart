import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/home/main_body.dart';
import 'package:untitled1/widgets/sec_text.dart';
import 'package:untitled1/widgets/text_font.dart';

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
              margin: EdgeInsets.only(top: 30, bottom: 10),
              padding: EdgeInsets.only(left: 15, right: 15),
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
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search, color: Colors.white54),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black54,
                    ),
                  ) ,
                 )
                ],
              ),
            ),
          ),
          //Body page
          MainBody(),
        ],
      ),
    );
  }
}
