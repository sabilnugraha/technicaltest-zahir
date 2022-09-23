import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class Update extends StatefulWidget {
  @override
  State<Update> createState() => _UpdateProfile();
}

class _UpdateProfile extends State<Update> {
  File? _image;

  Future _pickImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    File? img = File(image.path);
    setState(() {
      _image = img;
    });
  }

  void _showSelectPhotoOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.28,
          maxChildSize: 0.4,
          minChildSize: 0.28,
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('')),
      body: new Padding(
        padding: const EdgeInsets.all(17.0),
        child: new Column(
          children: <Widget>[
            new Container(
                height: 100.0,
                width: 100.0,
                margin: EdgeInsets.only(left: 0, top: 40, right: 0, bottom: 0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade200,
                ),
                child: Center(
                  child: _image == null
                      ? Image(
                          image: AssetImage("images/Avatar.png"),
                          width: 100,
                          height: 100,
                        )
                      : CircleAvatar(
                          backgroundImage: FileImage(_image!),
                        ),
                )),
            new Container(
              width: 328,
              margin: EdgeInsets.only(left: 0, top: 20, right: 0, bottom: 0),
              child: Text(
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                  "Full Name"),
            ),
            new TextField(
              decoration: new InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
              ),
            ),
            new Container(
              width: 328,
              margin: EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 0),
              child: Text(
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                  "Phone Number"),
            ),
            new TextField(
              decoration: new InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
              ),
            ),
            new Container(
              width: 328,
              margin: EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 0),
              child: Text(
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                  "Skill"),
            ),
            new TextField(
              decoration: new InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
