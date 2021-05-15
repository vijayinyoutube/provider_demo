import 'package:flutter/material.dart';
import 'Mapper.dart';
import 'Screens/Provider/Router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<NavigationProvider>(
        create: (_) => NavigationProvider(),
        child: Mapper(),
      ),
    );
  }
}
