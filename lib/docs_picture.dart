import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:take_facepicture_flutter/face_picture.dart';
import '../constants.dart';
import 'picture_layout.dart';

class DocsPicture extends StatefulWidget {
  const DocsPicture({Key? key}) : super(key: key);

  @override
  _DocsPictureState createState() => _DocsPictureState();
}

class _DocsPictureState extends State<DocsPicture> {
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
        title: 'Take a picture of your docs',
        description:
            'Please position the document in the frame. Make sure all the details are clear and visible before proceeding.',
        storedFile: _storedFile,
        onPressed: _takePicture,
        newScreen: FacePicture(),
        child: Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 80, 10, 60),
            width: 800,
            height: 300,
            decoration: kBoxDecorationItem.copyWith(color: Color(0xffF8FAFB)),
            alignment: Alignment.center,
            child: isPicked
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(26),
                    child: Image.file(
                      _storedFile,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  )
                : const Icon(CupertinoIcons.doc_on_clipboard),
          ),
        ),
      ),
    );
  }
}
