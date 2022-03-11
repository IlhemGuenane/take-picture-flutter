import 'package:flutter/material.dart';

const kStyleAppBarTitle = TextStyle(
  color: Colors.black87,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

const kScaffoldColor = Color(0xFFEDEFF2);

BoxDecoration kBoxDecoration = BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.white),
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(30.0),
      topRight: Radius.circular(30.0),
    ));

Divider kDivider = Divider(
  color: Colors.grey[350],
  // color: Color(0xffEDEDED),
  thickness: 1.0,
  indent: 10.0,
  endIndent: 10.0,
);
const kStyleDate = TextStyle(
    fontWeight: FontWeight.w400, fontSize: 13, color: Color(0xffB2B2B2));

const kStyleHeader = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);
const kStyleTitle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

const kStylecontent = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: Color(0xff7A7A7A),
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: '...',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
    borderSide: BorderSide.none,
  ),
  fillColor: Color(0xffF4F5F7),
  filled: true,
);

const Color kBlue = Color(0xff5486E9);

const kBorderRadius = BorderRadius.only(
  topRight: Radius.circular(10.0),
  topLeft: Radius.circular(10.0),
  bottomLeft: Radius.circular(10.0),
  bottomRight: Radius.circular(10.0),
);

InputDecoration kAreaDecoration = InputDecoration(
  hintText: '',
  border: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide.none,
  ),
  filled: true,
  isDense: true,
  fillColor: Colors.blueGrey[50],
);

BoxDecoration kBoxDecorationItem = BoxDecoration(
    color: Colors.blueGrey[50],
    border: Border.all(color: Colors.transparent),
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(25.0),
      topRight: Radius.circular(25.0),
      bottomRight: Radius.circular(25.0),
      bottomLeft: Radius.circular(25.0),
    ));

const kIconColor = Color(0xff627293);
ButtonStyle kButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Color(0xFF5486E9)),
  shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
);

const double spaceIconLabel = 8.0;
