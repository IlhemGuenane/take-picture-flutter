import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:take_facepicture_flutter/main.dart';
import 'package:take_facepicture_flutter/picture_layout.dart';

import 'picture_layout.dart';
import 'Items.dart';

class FacePicture extends StatefulWidget {
  const FacePicture({Key? key}) : super(key: key);

  @override
  _FacePictureState createState() => _FacePictureState();
}

class _FacePictureState extends State<FacePicture> {
  File _storedFile = File('');
  bool isPicked = false;
  late String text;

  Future<void> _takePicture() async {
    final ImagePicker _picker = ImagePicker();
    final pickedImage = await _picker.pickImage(
      source: ImageSource.camera,
      maxHeight: 300,
      maxWidth: 600,
    );
    setState(() {
      _storedFile = File(pickedImage!.path);
      isPicked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9A9DA3),
      body: PictureLayout(
        isPicked: isPicked,
        title: 'Take a picture of your face',
        description: 'Place your face in the frame and take a photo',
        storedFile: _storedFile,
        onPressed: _takePicture,
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TripsScreen()));
        },
        newScreen: MyApp(),
        child: Column(
          children: [
            const SizedBox(height: 60),
            ClipOval(
              child: Container(
                // margin: EdgeInsets.fromLTRB(10, 80, 10, 60),
                width: 240,
                height: 300,
                color: const Color(0xffC4C4C4),
                alignment: Alignment.center,
                child: isPicked
                    ? ClipOval(
                        // borderRadius: BorderRadius.circular(26),
                        child: Image.file(
                          _storedFile,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      )
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
