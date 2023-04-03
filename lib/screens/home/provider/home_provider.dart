import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';


class Homeprovider extends ChangeNotifier
{
  InAppWebViewController? inAppWebViewController;
  int index=0;

  List name=[
    "Wikipedia",
    "W3Schools",
    "JavaPoint",
    "TutorialsPoint",
    "Byju's",
    "Toppr",
    "Unacadamy",
    "Vedantu",
  ];
  List url=[
    "https://www.wikipedia.org/",
    "https://www.w3schools.com/",
    "https://www.javatpoint.com/",
   "https://www.tutorialspoint.com/",
    "https://byjus.com/",
    "https://www.toppr.com/",
    "https://unacademy.com/",
    "https://www.vedantu.com/",

  ];
  List images=[
    "assets/images/Byjus.png",
    "assets/images/java.png",
    "assets/images/Toppr.png",
    "assets/images/tutorial.png",
    "assets/images/Unacademy.png",
    "assets/images/vedantu.png",
    "assets/images/W3Schools.png",
    "assets/images/Wikipedia.png",
  ];

  void onchanged(int i)
  {
    index=i;
    notifyListeners();
  }

}