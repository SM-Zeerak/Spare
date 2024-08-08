import 'package:flutter/material.dart';

class CustomPassTextfield extends StatefulWidget {
  final TextEditingController controller;
  final String? hinttext;
  final Widget? icon;
  final Widget? suffixicon;
  final double width;
  final double? height;
  final Color textfielcolor;
  final Color textcolor;
  final Color bordercolor;
  final Color? hintcolor;
  final String? Function(String?)? validator;
  const CustomPassTextfield(
      {super.key,
      required this.controller,
      required this.hinttext,
      this.icon,
      required this.width,
      this.suffixicon,
      required this.textfielcolor,
      required this.textcolor,
      required this.bordercolor,
      this.hintcolor,
      this.height,
      this.validator});

  @override
  State<CustomPassTextfield> createState() => _CustomPassTextfieldState();
}

class _CustomPassTextfieldState extends State<CustomPassTextfield> {
  var _isObsecured;

  @override
  void initState() {
    super.initState();
    _isObsecured = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      width: widget.width,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: widget.bordercolor),
          color: widget.textfielcolor),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextFormField(
          obscureText: _isObsecured,
          controller: widget.controller,
          
          style: TextStyle(
            color: widget.textcolor,
            fontSize: 15,
          ),
          decoration: InputDecoration(
            prefixIcon: widget.icon,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _isObsecured = !_isObsecured;
                });
              },
              icon: !_isObsecured
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
            ),
            border: InputBorder.none,
            hintStyle: TextStyle(color: widget.hintcolor),
            hintText: widget.hinttext,
          ),
          validator: widget.validator,
          
          onChanged: (value) {
            
          },
        ),
      ),
    );
  }
}
