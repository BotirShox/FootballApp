import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/utils/dimension.dart';
import 'package:untitled1/widgets/expand.dart';
import 'package:untitled1/widgets/text_font.dart';

import '../../widgets/icon.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(Icons.clear_sharp),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
        child: Center(child: TextFont(size: Dimension.font2, text: "About",)),
        width: double.maxFinite,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(Dimension.radius2),
            topLeft: Radius.circular(Dimension.radius2)
          )
        ),
      ),),
            pinned: true,
            backgroundColor: Colors.black,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/image/1.png",
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),),
          SliverToBoxAdapter(
            child: Column(
          children: [
            Container(
            child: ExpandText(text: "rhslh;larhflkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanhlkjalkghl;hthj'ajjcwjerahlnkjcwjlerahlnkjpieuf82hoiqhhaejgvjfanh"),
            margin: EdgeInsets.only(left: Dimension.width2, right: Dimension.width2),
            ),
          ],
            )
          )
        ]
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(top:Dimension.height10, bottom: Dimension.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon1(iconColor:Colors.red, icon:Icons.favorite)
              ],
            ),
          )
        ],
      ),

    );
  }
}