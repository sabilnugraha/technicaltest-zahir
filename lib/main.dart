import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("my Apps"),
          centerTitle: true,
        ),
        body: Center(
            child: Container(
          width: 300,
          height: 200,
          padding: new EdgeInsets.all(10.0),
          child: Card(
            borderOnForeground: false,
            child: Image(
              image: AssetImage("images/Avatar.png"),
            ),
          ),
        )),
      ),
    );
  }
}
