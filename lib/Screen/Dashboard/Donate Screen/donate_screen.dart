import 'package:donation_application/Components/amount_button.dart';
import 'package:donation_application/Components/custom_textfield.dart';
import 'package:donation_application/Components/rounded_button.dart';
import 'package:donation_application/Components/search_textfield.dart';
import 'package:donation_application/Components/side_navigation.dart';
import 'package:donation_application/Screen/Dashboard/Donate%20Screen/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonateScreen extends StatefulWidget {
  const DonateScreen({super.key});

  @override
  State<DonateScreen> createState() => _DonateScreenState();
}

class _DonateScreenState extends State<DonateScreen> {
  int selectedIndex = -1; // Track the index of the selected button

  void selectButton(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  
  
  TextEditingController _search = TextEditingController();
  TextEditingController _amount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        drawer: SideNavigation(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'Case Detail',
            style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 14, color: Colors.white)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomSearch(
                controller: _search,
                passwordhide: false,
                width: 160,
                hinttext: 'Search here...',
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/donationimage.png'),
                          fit: BoxFit.fill)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.18),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 117,
                              height: 117,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/profile.png'),
                                    fit: BoxFit.fill),
                                border: Border.all(
                                    color: Colors.green,
                                    style: BorderStyle.solid),
                                // color: Colors.amber,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Hope Haven Trust',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'How much want to Donate?',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomTextfield(
                              controller: _amount,
                              hinttext: 'Enter Price',
                              passwordhide: false,
                              width: 329,
                              textfielcolor: const Color.fromARGB(66, 0, 0, 0),
                              textcolor: Colors.white,
                              bordercolor: Colors.white,
                              hintcolor: Colors.white,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            AmountButton(
                              // index: 0,
                              isSelected: selectedIndex == 0,
                              // onSelect: selectButton,
                              bgcolor1: Colors.green,
                              bgColor2: Colors.transparent,
                              textColor1: Colors.white,
                              textColor2: Colors.green,
                              text: '200',
                              iconwidth: 0,
                              borderColor1: Colors.green,
                              borderColor2: Colors.green, onpress: () { 
                                  setState(() {
                                    _amount.text = "\$ 200";
                                  });
                                  selectButton(0);
                                
                               },
                                
                              
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            AmountButton(
                              // index: 1,
                              isSelected: selectedIndex != 1,
                              // onSelect: selectButton,
                              bgcolor1: Colors.red,
                              bgColor2: Colors.transparent,
                              textColor1: Colors.white,
                              textColor2: Colors.red,
                              text: '500',
                              icon: Icons.local_fire_department_outlined,
                              iconcolor1: Colors.white,
                              iconcolor2: Colors.orange,
                              borderColor1: Colors.red,
                              borderColor2: Colors.red, onpress: () { 
                                 setState(() {
                                    _amount.text = "\$ 500";
                                  });
                                    selectButton(1);
                               },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            AmountButton(
                              // index: 2,
                              isSelected: selectedIndex == 2,
                              // onSelect: selectButton,
                              bgcolor1: Colors.green,
                              bgColor2: Colors.transparent,
                              textColor1: Colors.white,
                              textColor2: Colors.green,
                              text: '1,000',
                              iconwidth: 0,
                              borderColor1: Colors.green,
                              borderColor2: Colors.green, onpress: () { 
                                setState(() {
                                    _amount.text = "\$ 1,000";
                                  });
                                selectButton(2);
                               },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundedButton(
                                    width: 128,
                                    buttontext: 'Donate',
                                    onpressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                                content: PaymentScreen(),
                                              ));
                                    },
                                    height: 39,
                                    bgcolor: Colors.transparent,
                                    textcolor: Colors.white),
                                SizedBox(
                                  width: 10,
                                ),
                                RoundedButton(
                                    width: 128,
                                    buttontext: 'Cancel',
                                    onpressed: () =>
                                        Navigator.pop(context, false),
                                    height: 39,
                                    bgcolor: Colors.transparent,
                                    textcolor: Colors.white),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
