import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForget extends StatelessWidget {
  final String text1;
  final String clicktext;
  final Function() ontap;
  const LoginForget({super.key, required this.text1, required this.clicktext, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text1,style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600
                )
              ),),
             const SizedBox(width: 5,),
              InkWell(
                onTap: ontap,
                child: Text(clicktext, style: GoogleFonts.inter(
                  textStyle:const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 12
                )
                )))
            ],
          );
  }
}