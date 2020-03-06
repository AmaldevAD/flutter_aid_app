import 'package:aid/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:aid/screens/councellors.dart';
import 'package:aid/screens/doctors.dart';
import 'package:aid/screens/guidelines.dart';
import 'package:aid/screens/login.dart';
import 'package:aid/screens/signup.dart';
import 'package:aid/screens/result.dart';

Drawer drawer({@required width, @required context}) {
  return Drawer(
      child: SizedBox(
    width: width / 4,
    child: ListView(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: width / 2.5,
          child: Image.network(
            "https://cdn.hipwallpaper.com/i/3/31/Bk5DLA.jpg",
            fit: BoxFit.cover,
          ),
        ),
        //Home
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          child: Container(
            padding: EdgeInsets.only(right: 10, top: 25, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: width / 18,
                  child: AutoSizeText(
                    "Home",
                    style: drawwerTextStyle(),
                    maxLines: 2,
                    presetFontSizes: [18, 17, 15, 14],
                  ),
                ),
                Icon(Icons.chevron_right)
              ],
            ),
          ),
        ),
        Divider(height: 20, color: Colors.grey[600]),
        //Councelling
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Councellors()),
            );
          },
          child: Container(
            padding: EdgeInsets.only(right: 10, top: 25, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: width / 18,
                  child: AutoSizeText(
                    "Councelling  Centers",
                    style: drawwerTextStyle(),
                    maxLines: 2,
                    presetFontSizes: [18, 17, 15, 14],
                  ),
                ),
                Icon(Icons.chevron_right)
              ],
            ),
          ),
        ),
        Divider(height: 20, color: Colors.grey[600]),

        //Doctors
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Doctors()),
            );
          },
          child: Container(
            padding: EdgeInsets.only(right: 10, top: 25, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: width / 18,
                  child: AutoSizeText(
                    "Doctors",
                    style: drawwerTextStyle(),
                    maxLines: 2,
                    presetFontSizes: [18, 17, 15, 14],
                  ),
                ),
                Icon(Icons.chevron_right)
              ],
            ),
          ),
        ),
        Divider(height: 20, color: Colors.grey[600]),
        //Guide
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Guidelines()),
            );
          },
          child: Container(
            padding: EdgeInsets.only(right: 10, top: 25, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: width / 18,
                  child: AutoSizeText(
                    "Guidelines",
                    style: drawwerTextStyle(),
                    maxLines: 2,
                    presetFontSizes: [18, 17, 15, 14],
                  ),
                ),
                Icon(Icons.chevron_right)
              ],
            ),
          ),
        ),
        Divider(height: 20, color: Colors.grey[600]),
        //Result
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyChatScreen()),
            );
          },
          child: Container(
            padding: EdgeInsets.only(right: 10, top: 25, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: width / 18,
                  child: AutoSizeText(
                    "Result",
                    style: drawwerTextStyle(),
                    maxLines: 2,
                    presetFontSizes: [18, 17, 15, 14],
                  ),
                ),
                Icon(Icons.chevron_right)
              ],
            ),
          ),
        ),
        Divider(height: 20, color: Colors.grey[600]),

        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  color: Colors.red[400],
                  height: width / 10,
                  width: width / 4.5,
                  child: Center(
                      child: AutoSizeText(
                    "Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                    presetFontSizes: [18, 17, 16, 15, 14],
                  )),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: width / 18,
                child: AutoSizeText("OR"),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  color: Colors.blue[400],
                  height: width / 10,
                  width: width / 4.5,
                  child: Center(
                      child: AutoSizeText(
                    "Signup",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                    presetFontSizes: [18, 17, 16, 15, 14],
                  )),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  ));
}

TextStyle drawwerTextStyle() {
  return TextStyle(color: Colors.grey[600]);
}
