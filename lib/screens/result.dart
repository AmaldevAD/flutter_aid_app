import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class MyChatScreen extends StatefulWidget {
  const MyChatScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyChatState createState() => new _MyChatState();
}

class _MyChatState extends State<MyChatScreen> {
  final List<Message> _messages = <Message>[];

  // Create a text controller. We will use it to retrieve the current value
  // of the TextField!
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    DateTime time = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd hh:mm').format(time);

    return new Scaffold(
        appBar: new AppBar(
          title: const Text(
            'Chat User',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        body: new Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: new Container(
              child: new Column(
                children: <Widget>[
                  //Chat list
                  new Flexible(
                    child: new ListView.builder(
                      padding: new EdgeInsets.all(8.0),
                      reverse: true,
                      itemBuilder: (_, int index) => _messages[index],
                      itemCount: _messages.length,
                    ),
                  ),
                  new Divider(height: 1.0),
                  new Container(
                      decoration:
                          new BoxDecoration(color: Theme.of(context).cardColor),
                      child: new IconTheme(
                          data: new IconThemeData(
                              color: Theme.of(context).accentColor),
                          child: new Container(
                            margin: const EdgeInsets.symmetric(horizontal: 2.0),
                            child: new Row(
                              children: <Widget>[
                                //left send button

                                new Container(
                                  width: 48.0,
                                  height: 48.0,
                                  child: new IconButton(
                                      icon:Icon(Icons.chevron_left),
                                      onPressed: () => _sendMsg(
                                          _textController.text,
                                          'left',
                                          formattedDate)),
                                ),

                                //Enter Text message here
                                new Flexible(
                                  child: new TextField(
                                    controller: _textController,
                                    decoration: new InputDecoration.collapsed(
                                        hintText: "Enter message"),
                                  ),
                                ),

                                //right send button

                                new Container(
                                  margin:
                                      new EdgeInsets.symmetric(horizontal: 2.0),
                                  width: 48.0,
                                  height: 48.0,
                                  child: new IconButton(
                                      icon: Icon(Icons.arrow_forward_ios),
                                      onPressed: () => _sendMsg(
                                          _textController.text,
                                          'right',
                                          formattedDate)),
                                ),
                              ],
                            ),
                          ))),
                ],
              ),
            )));
  }

  void _sendMsg(String msg, String messageDirection, String date) {
    if (msg.length == 0) {
      Fluttertoast.showToast(
          msg: "Please Enter Message",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIos: 1,
          backgroundColor: Colors.blue);
    } else {
      _textController.clear();
      Message message = new Message(
        msg: msg,
        direction: messageDirection,
        dateTime: date,
      );
      setState(() {
        _messages.insert(0, message);
      });
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Every listener should be canceled, the same should be done with this stream.
    // Clean up the controller when the Widget is disposed
    _textController.dispose();
    super.dispose();
  }
}





//-------------------------------------------------------------------------------------------------------------

class Message extends StatelessWidget {
  Message({this.msg, this.direction, this.dateTime});

  final String msg;
  final String direction;
  final String dateTime;

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: direction == 'left'
          ? new Container(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Stack(
                      children: <Widget>[
                        //for left corner

                        new Image.asset(
                          'assets/images/in.png',
                          fit: BoxFit.scaleDown,
                          width: 30.0,
                          height: 30.0,
                        ),

                        new Container(
                          margin: EdgeInsets.only(left: 6.0),
                          decoration: new BoxDecoration(
                            color: Color(0xffd6d6d6),
                            border: new Border.all(
                                color: Color(0xffd6d6d6),
                                width: .25,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5.0),
                              topLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(0.0),
                              bottomLeft: Radius.circular(0.0),
                            ),
                          ),
                          alignment: Alignment.bottomLeft,
                          padding: const EdgeInsets.all(8.0),
                          child: new Text(
                            msg,
                            style: new TextStyle(
                              fontFamily: 'Gamja Flower',
                              fontSize: 20.0,
                              color: Color(0xff000000),
                            ),
                          ),
                          width: 180.0,
                        ),
                      ],
                    ),

                    //date time
                    new Container(
                      margin: EdgeInsets.only(left: 6.0),
                      decoration: new BoxDecoration(
                        color: Color(0xffd6d6d6),
                        border: new Border.all(
                            color: Color(0xffd6d6d6),
                            width: .25,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(5.0),
                          bottomLeft: Radius.circular(5.0),
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(
                          top: 0.0, bottom: 8.0, left: 8.0, right: 8.0),
                      child: new Text(
                        dateTime,
                        style: new TextStyle(
                          fontSize: 8.0,
                          color: Color(0xff000000),
                        ),
                      ),
                      width: 180.0,
                    ),
                  ],
                ),
              ],
            ))
          : new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    new Stack(
                      alignment: Alignment.topRight,
                      children: <Widget>[
                        //for right corner
                        new Image.asset(
                          'assets/images/out.png',
                          fit: BoxFit.scaleDown,
                          width: 30.0,
                          height: 30.0,
                        ),

                        new Container(
                          margin: EdgeInsets.only(right: 6.0),
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            border: new Border.all(
                                color: Color(0xffef5350),
                                width: .25,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5.0),
                              topLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(0.0),
                              bottomLeft: Radius.circular(0.0),
                            ),
                          ),
                          alignment: Alignment.bottomRight,
                          padding: const EdgeInsets.all(8.0),
                          child: new Text(
                            msg,
                            style: new TextStyle(
                              fontFamily: 'Gamja Flower',
                              fontSize: 20.0,
                              color: Color(0xffffffff),
                            ),
                          ),
                          width: 180.0,
                        ),
                      ],
                    ),

                    //date time
                    new Container(
                      margin: EdgeInsets.only(right: 6.0),
                      decoration: new BoxDecoration(
                        color: Colors.blue,
                        border: new Border.all(
                            color: Colors.blue,
                            width: .25,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(5.0),
                          bottomLeft: Radius.circular(5.0),
                        ),
                      ),
                      alignment: Alignment.bottomRight,
                      padding: const EdgeInsets.only(
                          top: 0.0, bottom: 8.0, left: 8.0, right: 8.0),
                      child: new Text(
                        dateTime,
                        style: new TextStyle(
                          fontSize: 8.0,
                          color: Color(0xffffffff),
                        ),
                      ),
                      width: 180.0,
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
