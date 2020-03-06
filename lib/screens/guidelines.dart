import 'package:flutter/material.dart';
import 'package:aid/widgets/drawer.dart';
import 'package:aid/widgets/appBar.dart';
import 'package:aid/widgets/timeline.dart';

class Guidelines extends StatefulWidget {
  Guidelines({Key key}) : super(key: key);

  @override
  _GuidelinesState createState() => _GuidelinesState();
}

class _GuidelinesState extends State<Guidelines> {
  @override
  Widget build(BuildContext context) {
    final List<TimelineModel> list = [
      TimelineModel(
          id: "1",
          description: "amal 1",
          lineColor: Colors.yellow,
          descriptionColor: Colors.green,
          titleColor: Colors.green,
          title: "Test"),
      TimelineModel(
          id: "2",
          lineColor: Colors.red,
          description: "Test 2",
          title: "Test 2"),
      TimelineModel(
        id: "3",
        description: "Salih",
        lineColor: Colors.black,
        title: "sdfd",
      )
    ];
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(title: 'Guidelines',context: context),
      drawer: drawer(width: width, context: context),
      body: TimelineComponent(
        timelineList: list,
      ),
    );
  }
}

