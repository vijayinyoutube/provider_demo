import 'Provider/Router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Thirdpage extends StatefulWidget {
  Thirdpage({Key? key}) : super(key: key);

  @override
  _ThirdpageState createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  @override
  Widget build(BuildContext context) {
    final navigation = Provider.of<NavigationProvider>(context);
    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            child: Text("Back to Second Page"),
            onPressed: () {
              navigation.updateNavigation("SecondPage");
            },
          ),
          ElevatedButton(
            child: Text("Navigate to Home Page"),
            onPressed: () {
              navigation.updateNavigation("HomePage");
            },
          ),
        ],
      )),
    );
  }
}
