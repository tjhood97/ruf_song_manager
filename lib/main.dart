//Package imports
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

//File imports
import 'landing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final myFirebase = Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder (
      future: Firebase.initializeApp(),
      builder: (context, snapshot) => MaterialApp (
        title: 'RUF Song Manager',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'RUF Song Manager'),
        debugShowCheckedModeBanner: false,
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return LandingPage();
  }
}
