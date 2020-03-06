
import 'package:flutter/material.dart';
import 'package:aid/screens/detailView/doctorDetail.dart';
import 'package:aid/screens/detailView/councellorDetail.dart';

Widget detailLister({@required type,@required cntxt }) {
  return ListView.builder(
    padding: EdgeInsets.only(top: 5, bottom: 5),
    itemCount: 10,
    itemBuilder: (context, int i) {
      return InkWell(
        onTap:(){
          navigator(type, context);
        } ,
        child: Card(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Container(
                      decoration: new BoxDecoration(
                        border:
                            Border.all(color: Color(0xff3b5999), width: 2.5),
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                          "https://cdn1.iconfinder.com/data/icons/user-pictures/100/boy-512.png")),

                  height: 100,
                  //color: Colors.red,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  //padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Dr Nandakishor Panikkar',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff73767a)),
                      ),
                      Text(
                        '9048968500',
                        style:
                            TextStyle(color: Color(0xff969798), fontSize: 13),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: new BorderRadius.circular(8),
                          //color: Color(0xffc0a90b), // Installed Color
                          //color: Color(0xffff9307), //Order Placed Color
                          color: Color(0xff37af0d), // Rewarded Color
                        ),
                        child: Container(
                          child: Text(
                            'Ernakulam',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  height: 100,

                  // color: Colors.blue,
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

navigator(type, context) {
  if (type == "d") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DoctorDetail()),
   );
  } else if (type == "c") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CouncellorDetail()),
    );
  }
}
