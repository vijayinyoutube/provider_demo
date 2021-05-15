import 'Provider/Router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Secondpage extends StatefulWidget {
  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    final navigation = Provider.of<NavigationProvider>(context);
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: Text("Back to Home Page"),
              onPressed: () {
                navigation.updateNavigation("HomePage");
              },
            ),
            ElevatedButton(
              child: Text("Navigate to Third Page"),
              onPressed: () {
                navigation.updateNavigation("ThirdPage");
              },
            ),
          ],
        ),
      ),
    );
  }
}
