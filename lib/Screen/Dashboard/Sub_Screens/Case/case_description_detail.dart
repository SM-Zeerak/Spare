import 'package:donation_application/Components/rounded_button.dart';
import 'package:donation_application/Screen/Dashboard/Donate%20Screen/donate_screen.dart';
import 'package:donation_application/Screen/Dashboard/Sub_Screens/gallery_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CaseDescriptionDetail extends StatelessWidget {
  const CaseDescriptionDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'GALLERY IMAGES',
            style: GoogleFonts.inter(
                textStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          ),
          GalleryImage(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              // padding: EdgeInsets.only(left: 30),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Case 1 : Description',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                  ),
                  Text(
                    'Help Families Find Warmth This Winter \nwith Home Haven Trust!',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                      fontSize: 16,
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Text(
                        'A harsh winter descends, but you cant afford proper heating for your family. The biting cold seeps into your home, making daily life a struggle, especially for children and the elderly. This is the reality for many families in our community. Home Haven Trust is dedicated to providing a safety net for these families, ensuring they have a warm and healthy environment during the coldest months.'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              // padding: EdgeInsets.only(left: 30),
              // color: Colors.black,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Donation',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                            fontSize: 16,
                          ))),
                          SizedBox(height: 10,),
                      Text('2000\$',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)))
                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.08,),
                  RoundedButton(width: 200, buttontext: 'Donate', onpressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DonateScreen()));
                  }, height: 40, bgcolor:  Colors.white, textcolor: Colors.green,)
                ],
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}
