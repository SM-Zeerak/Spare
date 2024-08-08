import 'package:flutter/material.dart';

class CustomTextMultiline extends StatelessWidget {
  final TextEditingController controller;
  final String? hinttext;
  final Widget? icon;
  final Widget? suffixicon;
  final bool passwordhide;
  final double width;
  final double? height;
  final Color textfielcolor;
  final Color textcolor;
  final Color bordercolor;
  final Color? hintcolor;
  final String? Function(String?)? validator;
  const CustomTextMultiline(
      {super.key,
      required this.controller,
      required this.hinttext,
      this.icon,
      required this.passwordhide,
      required this.width,
      this.suffixicon,
      required this.textfielcolor,
      required this.textcolor,
      required this.bordercolor,  this.hintcolor, this.height,  this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      width: width,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: bordercolor),
          color: textfielcolor),
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: TextFormField(
          keyboardType: TextInputType.multiline,
          maxLines: null,
          obscureText: passwordhide,
          controller: controller,
          style: TextStyle(
            color: textcolor,
            fontSize: 15,
          ),
          decoration: InputDecoration(
            prefixIcon: icon,
            suffixIcon: suffixicon,
            border: InputBorder.none,
            hintStyle: TextStyle(color: hintcolor),
            hintText: hinttext,
          ),
          validator:validator,
        ),
      ),
    );
  }
}
