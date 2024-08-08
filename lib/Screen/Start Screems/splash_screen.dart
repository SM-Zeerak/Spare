import 'package:donation_application/Components/rounded_button.dart';
import 'package:donation_application/Screen/Start%20Screems/login.dart';
import 'package:donation_application/Screen/Sub_screens/world_animation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Text('Spare your',style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 40,
                color: Colors.grey.shade500
              )
            ), ),
            Text('Change',style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 40,
                color: Color(0xff36984B),
                
              )
            ), ),
             Text('Change the',style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 40,
                color: Colors.grey.shade500
              )
            ), ),
            Text('World!',style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 40,
                color: Color(0xff36984B),
                
              )
            ), ),
            // SizedBox(height: 20,),
            Container(
             child: WorldAnimation(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: RoundedButton(width: 200, buttontext: 'Get Started', onpressed: () { 
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  LoginPage()),
                        );
               }, height: 48, bgcolor: const Color(0xff36984B), textcolor: Colors.white,),
            )
            
            
          ],
        ),
      ),
    );
  }
}