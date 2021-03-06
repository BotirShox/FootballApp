// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/models/product.dart';
import 'package:untitled1/utils/constants.dart';

import 'package:untitled1/widgets/column.dart';
import 'package:untitled1/widgets/text_font.dart';

import '../../utils/dimension.dart';

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
            dotsCount: 6,
            position:_currentPageValue,
            decorator:DotsDecorator(
                activeColor: Colors.teal,
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimension.radius1))
            ),
          ),
        SizedBox(height: Dimension.height5),
        Container(
          margin: EdgeInsets.only(left: Dimension.width1,),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFont(text: "League"),
            SizedBox(width: Dimension.width4,),
          ],
        ),
        ),
        // LIST
        Container(
          height: 900,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.only(left: Dimension.width3, right: Dimension.width3, bottom: Dimension.height5),
                  child: Row(
                    children: [
                      // LOGO section
                      Expanded(
                    child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimension.radius2),
                            color: Colors.black12,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/image/2.png"
                                )
                            )
                        ),
                      ),
                      ),
                      Expanded(
                        child: Container(
                        height: 20,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimension.radius1),
                            topRight: Radius.circular(Dimension.radius1)
                          ),
                          color: Colors.pink,
                        ),
                      ),
                    )
                    ],
                  ),
                );

              }),
        ),
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
                  image: AssetImage(
                      "assets/image/3.png"
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
              padding: EdgeInsets.only(top: Dimension.padding1, left: Dimension.width3, right: Dimension.width1, bottom: Dimension.padding1),
              child: AppColumn(text: " "),
            ),
        ),
        )],
    )
    );
  }
}

