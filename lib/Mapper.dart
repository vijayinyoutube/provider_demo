import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/Provider/Router.dart';

class Mapper extends StatefulWidget {
  Mapper({Key? key}) : super(key: key);

  @override
  _MapperState createState() => _MapperState();
}

class _MapperState extends State<Mapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<NavigationProvider>(
          builder: (context, navigationProvider, _) =>
              navigationProvider.getNavigation),
    );
  }
}
