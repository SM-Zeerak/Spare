import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
   final TextEditingController controller;
  final String? hinttext;
  final Widget? icon;
  final Widget? suffixicon;
  final bool passwordhide;
  final double width;
  const CustomSearch({super.key, required this.controller,required this.hinttext, this.icon, this.suffixicon, required this.passwordhide, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
            // color: Colors.grey,
            width: width,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
              border: Border.all(color: Colors.grey)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10,bottom: 2),
              child: TextFormField(
                obscureText: passwordhide,
                  controller: controller,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,                ),
                    decoration: InputDecoration(
                      prefixIcon: icon,
                      suffixIcon: Icon(Icons.search,color: Colors.white,),
                    border: InputBorder.none,
                    hintText: hinttext,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                    )
                  ),
                ),
            ),
          );
  }
}