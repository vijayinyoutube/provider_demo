import 'package:flutter/material.dart';
import 'package:provider_demo/Screens/HomePage.dart';
import 'package:provider_demo/Screens/Thirdpage.dart';
import 'package:provider_demo/Screens/SecondPage.dart';

class NavigationProvider with ChangeNotifier {
  String currentPage = "HomePage";

  Widget get getNavigation {
    if (currentPage == "SecondPage") {
      return Secondpage();
    } else if (currentPage == "ThirdPage") {
      return Thirdpage();
    } else {
      return MyHomePage();
    }
  }

  void updateNavigation(String page) {
    currentPage = page;
    notifyListeners();
  }
}
