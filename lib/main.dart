import 'package:flutter/material.dart';
import 'package:aid/screens/home.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}





