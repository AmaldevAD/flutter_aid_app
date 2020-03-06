import 'package:flutter/material.dart';
import 'package:aid/screens/extras/background.dart';
import 'package:aid/screens/signup.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

TextEditingController pid = TextEditingController();
TextEditingController password = TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: GestureDetector(
            onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Red_Ribbon.svg/1200px-Red_Ribbon.svg.png',
                        width: MediaQuery.of(context).size.width / 1.5,
                        height: 150,
                      ),
                      WavyHeader(),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 5, left: 10),
                      padding: EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                          shape: CircleBorder(), color: Colors.black38),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: MediaQuery.of(context).size.width / 15,
                      ),
                    ),
                  ),
                ],
              ),
              LoginInput()
            ],
          ),
        ));
  }
}

class LoginInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Padding(
        //   padding:
        //       EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.3),
        // ),
        Column(
          children: <Widget>[
            ///holds email header and inputField
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    InputWidget(30.0, 0.0),
                    Padding(
                        padding: EdgeInsets.only(right: 50),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: Text(
                                'LOGIN ',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Color(0xFFA0A0A0), fontSize: 12),
                              ),
                            )),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: ShapeDecoration(
                                  shape: CircleBorder(),
                                  gradient: LinearGradient(
                                      colors: signInGradients,
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                                ),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size:
                                      MediaQuery.of(context).size.width / 11.5,
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50),
            ),
            // roundedRectButton(" Create an Account", signInGradients, false),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
              child: Text(
                "Or Sign Up with pid providedr",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

Widget roundedRectButton(
    String title, List<Color> gradient, bool isEndIconVisible) {
  return Builder(builder: (BuildContext mContext) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Stack(
        alignment: Alignment(1.0, 0.0),
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(mContext).size.width / 1.7,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              gradient: LinearGradient(
                  colors: gradient,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            padding: EdgeInsets.only(top: 16, bottom: 16),
          ),
          Visibility(
            visible: isEndIconVisible,
            child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: ImageIcon(
                  AssetImage("assets/ic_forward.png"),
                  size: 30,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  });
}

const List<Color> signInGradients = [
  Color(0xFF0EDED2),
  Color(0xFF03A0FE),
];

const List<Color> signUpGradients = [
  Color(0xFFFF9945),
  Color(0xFFFc6076),
];

class InputWidget extends StatelessWidget {
  final double topRight;
  final double bottomRight;

  InputWidget(this.topRight, this.bottomRight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 40, bottom: 30),
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        child: Column(
          children: <Widget>[
            Material(
              elevation: 10,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(bottomRight),
                      topRight: Radius.circular(topRight))),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 40, right: 20, top: 10, bottom: 10),
                child: TextField(
                  controller: pid,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "PID",
                      hintText: "PEKM012017821",
                      hintStyle:
                          TextStyle(color: Color(0xFFE1E1E1), fontSize: 14)),
                ),
              ),
            ),
            Material(
              elevation: 10,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(bottomRight),
                  //topRight: Radius.circular(topRight),
                ),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 40, right: 20, top: 10, bottom: 10),
                child: TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "password",
                      labelStyle: TextStyle(fontSize: 15),
                      hintStyle:
                          TextStyle(color: Color(0xFFE1E1E1), fontSize: 14)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
