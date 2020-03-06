import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:aid/globals.dart' as globals;
import 'package:aid/screens/profile.dart';


AppBar appBar({@required title ,@required context}) {
  double width = MediaQuery.of(context).size.width;
  return AppBar(
    title: Text(title),
    actions: <Widget>[
      Container(
        padding: EdgeInsets.all(13),
        child: InkWell(
          onTap: () {
            globals.isLoggedIn==true??Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
          },
          child: Container(
            decoration: new BoxDecoration(
              // border: Border.all(color: Color(0xff3b5999), width: 2.5),
              shape: BoxShape.circle,
            ),
            child: Image.asset(
                "assets/boy.png"),
          ),
        ),
      ),

      globals.isLoggedIn==true? Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top:15,bottom: 13,right: 5),
        width: width/4.5,
        child: AutoSizeText("1234567853343543121",maxLines: 1,overflow: TextOverflow.ellipsis,),
      ):Container()

    ],
  );
}

navigate(){
  
}
