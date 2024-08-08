import 'package:flutter/material.dart';

class AmountButton extends StatefulWidget {
  // final int index;
  final bool isSelected;
  final Color bgcolor1;
  final Color bgColor2;
  final Color textColor1;
  final Color textColor2;
  final Color borderColor1;
  final Color borderColor2;
  final Function() onpress;
  final String text;
  final IconData? icon;
  final Color? iconcolor1;
  final Color? iconcolor2;
  final double? iconwidth;
  // final Function(int) onSelect;
  const AmountButton({
    super.key,
    // required this.index,
    required this.isSelected,
    required this.bgcolor1,
    required this.bgColor2,
    required this.textColor1,
    required this.textColor2,
    // required this.onSelect,
    required this.text,
    required this.borderColor1,
    required this.borderColor2,
    required this.onpress, this.icon, this.iconcolor1, this.iconcolor2, this.iconwidth,
  });

  @override
  State<AmountButton> createState() => _AmountButtonState();
}

class _AmountButtonState extends State<AmountButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: widget.onpress,
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.isSelected ? widget.bgcolor1 : widget.bgColor2,
        minimumSize: Size(267, 39),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        side: BorderSide(
          color: widget.isSelected ? widget.borderColor1 : widget.borderColor2,
        ),
      ),
      child: Container(
        width: 267,
        height: 47,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // color: Colors.amber,
              width: widget.iconwidth,
              child: Icon(widget.icon, color: widget.isSelected ? widget.iconcolor1 : widget.iconcolor2,)),
            Text(
              widget.text,
              style: TextStyle(
                  color: widget.isSelected ? widget.textColor1 : widget.textColor2,
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
