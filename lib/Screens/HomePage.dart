import 'Provider/Router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final navigation = Provider.of<NavigationProvider>(context);
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Navigate to Second Page"),
          onPressed: () {
            navigation.updateNavigation("SecondPage");
          },
        ),
      ),
    );
  }
}
