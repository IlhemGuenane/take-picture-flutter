import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onPress;
  Color? iconColor, backColor;
  double iconSize;

  RoundIconButton(
      {required this.icon,
      required this.onPress,
      this.iconColor,
      this.backColor,
      this.iconSize = 14});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        size: iconSize,
        color: iconColor ?? Color(0xFF5486E9),
      ),
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(
        width: iconSize == 0 ? 30 : iconSize + 10,
        height: iconSize == 0 ? 30 : iconSize + 10,
      ),
      elevation: 0,
      fillColor: backColor ?? Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
