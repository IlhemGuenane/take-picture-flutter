import 'package:flutter/material.dart';

import 'package:take_facepicture_flutter/main.dart';

import '../constants.dart';
import 'empty_layout.dart';

class TripsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Folder',
          style: kStyleAppBarTitle,
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 14),
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle_outline_rounded,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: EmptyLayout(
        img: 'under_verification.png',
        text1: 'Under Verification',
        text2:
            'Once your docs are verified you will be able to\n add you items',
        noButton: true,
        widgetScreen: MyApp(),
      ),
    );
  }
}
