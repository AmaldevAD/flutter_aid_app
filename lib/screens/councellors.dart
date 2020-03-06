import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:aid/widgets/drawer.dart';
import 'package:aid/widgets/appBar.dart';
import 'package:aid/widgets/detailLister.dart';

class Councellors extends StatefulWidget {
  Councellors({Key key}) : super(key: key);

  @override
  _CouncellorsState createState() => _CouncellorsState();
}

class _CouncellorsState extends State<Councellors> {
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(title: 'Councellors', context: context),
      drawer: drawer(width: width,context: context),
      body: detailLister(type: "c",cntxt: context)
    );
  }
}