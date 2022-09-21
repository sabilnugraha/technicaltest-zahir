import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Update extends StatefulWidget {
  @override
  _UpdateProfile createState() => _UpdateProfile();
}

class _UpdateProfile extends State<Update> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('page 3')),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(hintText: "Full Name"),
            )
          ],
        ),
      ),
    );
  }
}
