import 'package:flutter/material.dart';
import 'package:aid/widgets/drawer.dart';
import 'package:aid/widgets/appBar.dart';
import 'package:aid/widgets/detailLister.dart';
import 'package:aid/globals.dart' as globals;

class Doctors extends StatefulWidget {
  Doctors({Key key}) : super(key: key);

  @override
  _DoctorsState createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  
  @override
  Widget build(BuildContext context) {
  
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(title: 'Doctors',context: context),
      drawer: drawer(width: width, context: context),
      body: detailLister(type: "d",cntxt: context)
    );
  }
}
