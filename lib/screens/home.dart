import 'package:flutter/material.dart';
import 'package:aid/widgets/drawer.dart';
import 'package:aid/widgets/appBar.dart';
import 'package:aid/globals.dart' as globals;

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(title: 'Home',context: context),
      drawer: drawer(width: width, context: context),
      body: SingleChildScrollView()
    );
  }
}

