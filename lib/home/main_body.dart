// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/widgets/reusible.dart';
import 'package:untitled1/widgets/sec_text.dart';
import 'package:untitled1/widgets/text_font.dart';

import '../utils/dimension.dart';

class MainBody extends StatefulWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  PageController pageController = PageController(viewportFraction: 0.9);
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimension.pageViewContainer;
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState((){ _currentPageValue = pageController.page!;

      });
    });
  }

  @override
  void dispose(){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: Colors.white,
          height: Dimension.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 10,
              itemBuilder:(context,position){
                return _buildPageItem(position);
              }),
        ),
        new DotsIndicator(
            dotsCount:10,
            position:_currentPageValue,
            decorator:DotsDecorator(
              activeColor: Colors.teal,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimension.radius1))
            ),
        )
      ],
    );
  }
  Widget _buildPageItem(int index){
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currentPageValue.floor()){
      var currentScale = 1-(_currentPageValue-index)*(1-_scaleFactor);
      var currentTrans = _height*(1-currentScale)/2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, currentTrans, 0);

    }
    else if (index == _currentPageValue.floor()+1) {
      var currentScale = _scaleFactor+(_currentPageValue-index+1)*(1-_scaleFactor);
      var currentTrans = _height*(1-currentScale)/2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, currentTrans, 0);
    }
    else if (index == _currentPageValue.floor()-1) {
      var currentScale = 1-(_currentPageValue-index)*(1-_scaleFactor);
      var currentTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, currentTrans, 0);
    }
    else {
      var currentScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 0);
    }
      return Transform(
      transform: matrix,
      child: Stack(
      children: [
        Container(
          height: Dimension.pageViewContainer,
          margin: EdgeInsets.only(left: Dimension.width1, right: Dimension.width1),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimension.radius2),
              color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/3.png"
                  )
              )
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
          height: Dimension.pageTextContainer,
          margin: EdgeInsets.only(left: Dimension.width4, right: Dimension.width4, bottom: Dimension.padding2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimension.radius1),
              color: Colors.yellow,
            boxShadow: [
             BoxShadow(
               color: Colors.black12,
               blurRadius: 5.0,
               offset: Offset(0, 5)
             ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(0, 0)
              ),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, 0)
              )
            ]
          ),
            child: Container(
              padding: EdgeInsets.only(top: Dimension.padding1, left: Dimension.width3, right: Dimension.width3, bottom: Dimension.padding1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFont(text: "Barslays"),
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
                 /* Row(
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
                  ) */
                ],
              ),
            ),
        ),
        )],
    )
    );
  }
}

