import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final Widget widget;
  final Color backGroundColor;
  final Color borderColor;
  final double width;
  final double height;
  const CustomButton(
      {required this.onPressed,
      required this.widget,
      required this.backGroundColor,
      required this.height,
      required this.width,
      required this.borderColor});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: widget,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backGroundColor),
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
          //elevation: MaterialStateProperty.all<double>(elevation!),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                5.0,
              ),
            ),
          ),
          fixedSize: MaterialStateProperty.all<Size>(Size(width, height)),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(color: borderColor),
          )),
    );
  }
}
