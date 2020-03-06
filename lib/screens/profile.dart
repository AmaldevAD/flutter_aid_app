import 'package:aid/globals.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:aid/widgets/appBar.dart';
import 'package:aid/widgets/drawer.dart';
import 'package:aid/main.dart' as main;
import 'home.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

   
    //Navigator.pop(context);
    //Navigator.popUntil(context, ModalRoute.withName('/login'));
    //Navigator.pop(context);
   //Navigator.popUntil(context, ModalRoute.withName('/'));
  // Navigator.of(context).popUntil((route) => false);
   //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Home()));

   //Navigator.pushReplacementNamed(context, '/');
   //Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
   // main.main();
   // Navigator.popUntil(context, ModalRoute.withName('/'));
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(title: "Profile", context: context),
      drawer: drawer(width: width, context: context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                width: width / 2,
                height: width / 2,
                margin: const EdgeInsets.only(top: 20),
                //image from asset
                child: Container(
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 3, color: Theme.of(context).primaryColor),
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/boy.png",
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 20),
              child: Center(
                child: AutoSizeText("1155414545155665656525665dsmfcadsjfbnm"),
              ),
            ),
            Divider(),
            //address
            ListTile(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => AddressScreen(),
              //     ),
              //   );
              // },
              leading: Icon(
                Icons.content_paste,
                color: Colors.blue,
              ),
              title: Text('Address'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Manage address'),
                ],
              ),
              enabled: true,
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(),
            //orders
            ListTile(
              onTap: () {
                print("tapped");
              },
              leading: Icon(
                Icons.receipt,
                color: Colors.orange,
              ),
              title: Text('Orders'),
              subtitle: Text('Manage your orders'),
              enabled: true,
              trailing: Icon(Icons.chevron_right),
            ),

            
          ],
        ),
      ),
    );
  }
}
