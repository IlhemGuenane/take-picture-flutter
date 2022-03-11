import 'package:flutter/material.dart';
import 'package:take_facepicture_flutter/docs_picture.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      body: MyHome(),
    ));
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text('Click me to take a picture'),
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DocsPicture())),
      ),
    );
  }
}
