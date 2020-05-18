import 'package:flutter/material.dart';

import 'package:news/modelpages.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:news/screens/home_screen.dart';
//import 'package:shared_preferences/shared_preferences.dart';


class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<pagesmodels> pages;
  ValueNotifier<int> _pageviewnotifier = ValueNotifier(0);

  void _addpages() {
    pages = List<pagesmodels>();
    pages.add(pagesmodels(
        "welcome",
        "1-مبدئيا دا اول تطبيق ليا فتقول ما شاء الله وتشجعني احٍسن ليك",
        Icons.ac_unit,
        "assets/images/pn.jpg"));
    pages.add(pagesmodels(
        "alam",
        "2-فاهم ولا دماغك تخينه",
        Icons.alarm,
        "assets/images/pn2.jpg"));
    pages.add(pagesmodels(
        "print",
        "3-اظن الرساله وصلت",
        Icons.print,
        "assets/images/pn3.jpg"));
    pages.add(pagesmodels(
        "map",
        "4-ابرار ابرار ابرار ابرار ماما ماما ماما ماما انا طبعا",
        Icons.map,
        "assets/images/pn4.jfif"));
  }

  @override
  Widget build(BuildContext context) {
    _addpages();



    return Stack(
      children: <Widget>[
        Scaffold(
          body: PageView.builder(
            onPageChanged: (index){
              _pageviewnotifier.value=index;

            },
            itemCount: pages.length,
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(pages[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(0, -100),
                        child: Icon(
                          pages[index].icon,
                          size: 150,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        pages[index].title,
                        style: TextStyle(
                            letterSpacing: 2,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 48,
                          right: 48,
                        ),
                        child: Text(
                          pages[index].description,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 30,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
        Transform.translate(
          offset: Offset(0, 175),

            child:Align(
              alignment: Alignment.center,
              child: _display(pages.length),
            ),
          ),

        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.red,
                onPressed: () {
                 // _updateseen();
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return homescreen();
                  },),);
                },
                child: Text(
                  "GET STARTED",
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, letterSpacing: 1.5),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

//  void _updateseen()async{
//
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    prefs.setBool("seen", true);
//  }
Widget _display(int length){

  return PageViewIndicator(
    pageIndexNotifier: _pageviewnotifier,
    length: length,
    normalBuilder: (animationController, index) => Circle(
      size: 8.0,
      color: Colors.grey,
    ),
    highlightedBuilder: (animationController, index) => ScaleTransition(
      scale: CurvedAnimation(
        parent: animationController,
        curve: Curves.ease,
      ),
      child: Circle(
        size: 12.0,
        color: Colors.red,
      ),
    ),
  );
}


}

