import 'dart:io';

import 'package:flutter/material.dart';

import '../constants.dart';
import 'round_button.dart';

class PictureLayout extends StatelessWidget {
  bool isPicked;
  File storedFile;
  Widget child;
  String title;
  String description;
  Function() onPressed;
  Widget newScreen;
  Function()? onTap;
  PictureLayout(
      {required this.isPicked,
      required this.child,
      required this.title,
      required this.description,
      required this.storedFile,
      required this.onPressed,
      required this.newScreen,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        child,
        const SizedBox(height: 40),
        Column(
          children: [
            Text(
              title,
              style: kStyleTitle.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white70),
            ),
          ],
        ),
        const SizedBox(height: 35),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: isPicked
                      ? onPressed
                      : () {
                          Navigator.pop(context);
                        },
                  child: Text(
                    isPicked ? 'Retry' : 'Cancel',
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: IconButton(
                    onPressed: onPressed,
                    icon: const Icon(
                      Icons.circle,
                      color: Colors.white,
                      size: 76,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Visibility(
                    visible: isPicked,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 75,
                      ),
                      child: RoundIconButton(
                        iconColor: Colors.white,
                        backColor: const Color(0xFF5486E9),
                        iconSize: 30,
                        icon: Icons.arrow_forward_rounded,
                        onPress: onTap ??
                            () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => newScreen));
                            },
                      ),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
