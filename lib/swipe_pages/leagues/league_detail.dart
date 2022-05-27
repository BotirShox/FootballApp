// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/utils/dimension.dart';
import 'package:untitled1/widgets/column.dart';
import 'package:untitled1/widgets/icon.dart';

import '../../widgets/expand.dart';
import '../../widgets/reusible.dart';
import '../../widgets/sec_text.dart';
import '../../widgets/text_font.dart';

class LeagueDetail extends StatelessWidget {
  const LeagueDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Stack(
        children: [
          // Back Image
          Positioned(
            left: 0,
              right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit:BoxFit.cover,
                  image: AssetImage(
                    "assets/image/1.png"
                  )
                )
              ),
            ),
          ),
          // Icons
          Positioned(
            top: Dimension.height5,
              left: Dimension.width1,
              right: Dimension.width4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon1(icon: Icons.arrow_back_ios),
                ],
          )),
          // About
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 350-20,
              child: Container(
              padding: EdgeInsets.only(left: Dimension.width3, right: Dimension.width3, top:2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimension.radius2),
                    topLeft: Radius.circular(Dimension.radius2),
                  ),
                    color: Colors.yellow,
                ),
                child: Container(
                  padding: EdgeInsets.only(top: Dimension.padding1, left: Dimension.width3, right: Dimension.width3, bottom: Dimension.padding1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppColumn(text: "Barslays"),
                      SizedBox(height: Dimension.height10),
                      SizedBox(height: Dimension.height10),
                      TextFont(text: "About"),
                      SizedBox(height: Dimension.height10),
                      SizedBox(height: Dimension.height10),
                      Expanded(child: SingleChildScrollView(child: ExpandText(text:"rhslh;larhflkjalkghl;hthj'ajjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhb'""tjl;tsmt" "gs;k5pj3t8arhg;kjs'telhnk'wejfk'jopqjypj5'jh'q3kjj'fhgkokwkaoer  jbdsglkj/lhnjbdsBHVBShdevagw,.mfnkhmk;wkfnajlegflkn;ksnmmrfklneslkngvnlktnrviuwiv jiorjeabknalkje;e4ihslh;larhflkjalkghl;hthj'ajjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhb'""tjl;tsmt" "gs;k5pj3t8arhg;kjs'telhnk'wejfk'jopqjypj5'jh'q3kjj'fhgkokwkaoer  jbdsglkj/lhnjbdsBHVBShdevagw,.mfnkhmk;wkfnajlegflkn;ksnmmrfklneslkngvnlktnrviuwiv jiorjeabknalkje;e4ighslh;larhflkjalkghl;hthj'ajjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhb'""tjl;tsmt" "gs;k5pj3t8arhg;kjs'telhnk'wejfk'jopqjypj5'jh'q3kjj'fhgkokwkaoer  jbdsglkj/lhnjbdsBHVBShdevagw,.mfnkhmk;wkfnajlegflkn;ksnmmrfklneslkngvnlktnrviuwiv jiorjeabknalkje;e4ih;qoh")))
                    ],
                  ),
                ),
          ))
        ],
      ),
     /* bottomNavigationBar: Container(
        height: 122,
        padding: EdgeInsets.only(top: Dimension.width3, bottom: Dimension.width3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimension.radius1),
            topRight: Radius.circular(Dimension.radius1)),
          color: Colors.teal,
          ),
        ), */
      );
  }
}
