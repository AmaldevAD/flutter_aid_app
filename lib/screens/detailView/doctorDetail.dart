import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:aid/screens/book.dart';

class DoctorDetail extends StatefulWidget {
  DoctorDetail({Key key}) : super(key: key);

  @override
  _DoctorDetailState createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Card(
            margin: const EdgeInsets.only(top: 100, right: 40, left: 40),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: details(width),
              ),
            ),
          ),
        ));
  }

  details(width) {
    List<Widget> list = [
      Container(
        // color: Colors.red,
        margin: EdgeInsets.only(bottom: 10, top: 10),
        height: 40,
        width: width,
        alignment: Alignment.topRight,
        child: IconButton(
            icon: Icon(
              Icons.close,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      )
    ];
    for (int i = 0; i < 5; i++) {
      list.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              height: width / 16,
              child: AutoSizeText(
                "Name :",
                presetFontSizes: [20, 18, 17, 16, 14],
                maxLines: 1,
                style: textStyle(),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.only(bottom: 20),
              height: width / 16,
              child: AutoSizeText(
                "naasjdjfhbcjmvbzkj",
                presetFontSizes: [20, 18, 17, 16, 14, 10],
                maxLines: 1,
                style: textStyle(),
              ),
            ),
          ),
        ],
      ));
    }
    list.add(
      InkWell(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.only(top: 20, bottom: 20),
          padding: const EdgeInsets.symmetric(vertical: 10),
          color: ThemeData().primaryColor,
          height: width / 10,
          width: width / 2.5,
          child: Center(
            child: AutoSizeText(
              "Start Messaging",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
              presetFontSizes: [18, 17, 16, 15, 14],
            ),
          ),
        ),
      ),
    );
    list.add(
      InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Book()));
        },
        child: Container(
          margin: const EdgeInsets.only( bottom: 30),
          padding: const EdgeInsets.symmetric(vertical: 10),
          color: Colors.red[400],
          height: width / 10,
          width: width / 3.5,
          child: Center(
            child: AutoSizeText(
              "Book",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
              presetFontSizes: [18, 17, 16, 15, 14],
            ),
          ),
        ),
      ),
    );
    return list;
  }

  TextStyle textStyle() {
    return TextStyle(color: Colors.grey[600]);
  }
}
