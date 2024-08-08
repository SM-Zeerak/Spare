import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final double width;
  final double height;
  final String buttontext;
  final Function() onpressed;
  final Color bgcolor;
  final Color textcolor;
  final Widget? icon;
  const RoundedButton(
      {super.key,
      required this.width,
      required this.buttontext,
      required this.onpressed, required this.height, required this.bgcolor, required this.textcolor, this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, height),
        backgroundColor: bgcolor,
        side: BorderSide(color: Colors.green)
      ),
      icon: icon,
      label: Text(
        buttontext,
        style:  TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: textcolor),
      ),
    );
  }
}
