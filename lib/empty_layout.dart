import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EmptyLayout extends StatelessWidget {
  bool noButton = false;
  String img;
  String text1;
  String text2;
  String? textButton;
  Color backGroundcolor;
  Color coulour;
  Widget widgetScreen;
  Function()? onPressed;

  EmptyLayout(
      {required this.img,
      required this.text1,
      required this.text2,
      required this.noButton,
      this.textButton,
      this.backGroundcolor = Colors.transparent,
      this.coulour = Colors.black,
      required this.widgetScreen,
      this.onPressed = null});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.gpp_maybe_rounded,
              size: 140,
              color: Colors.grey.shade800,
            ),
            const SizedBox(height: 10),
            Text(
              text1,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              text2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 40),
            Container(
                child: !noButton
                    ? OutlinedButton(
                        onPressed: onPressed ??
                            () {
                              Navigator.of(context, rootNavigator: true)
                                  .pushReplacement(MaterialPageRoute(
                                      builder: (context) => widgetScreen));
                            },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(backGroundcolor),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                        child: Row(
                          children: [
                            Text(
                              textButton!,
                              style: TextStyle(color: coulour),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: coulour,
                            ),
                          ],
                        ),
                      )
                    : null),
          ],
        ),
      ],
    );
  }
}
